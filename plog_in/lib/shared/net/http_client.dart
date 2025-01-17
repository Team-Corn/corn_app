import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:get/get.dart' as getx;
import 'package:plog_in/feature/auth/onboarding/ui/onboarding_view.dart';
import 'package:plog_in/shared/model/authentication.dart';
import 'package:plog_in/shared/model/refresh_token_request.dart';
import 'package:plog_in/shared/net/api_constants.dart';
import 'package:plog_in/shared/service/secure_storage_service.dart';

class HttpClient {
  late Dio client;
  late Dio retryClient;

  final storageService = getx.Get.find<SecureStorageService>();

  HttpClient() {
    client = Dio(BaseOptions(
      receiveTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
    ));
    client.interceptors.add(_interceptor());
    client.interceptors.add(RetryInterceptor(
      dio: client,
      retries: 1,
      retryDelays: const [
        Duration(seconds: 30),
      ],
    ));

    retryClient = Dio(BaseOptions(
      receiveTimeout: const Duration(seconds: 10),
      connectTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
    ));
  }


  Interceptor _interceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        String? accessToken = await storageService.getAccessToken();


        if (accessToken == null) {
          handler.next(options);
          return;
        }

        DateTime? expirationDateTime = getExp(accessToken!);

        if (expirationDateTime  == null) {
          handler.next(options);
          return;
        }

        int diffSecond =
            expirationDateTime!.difference(DateTime.now()).inSeconds;

        if (diffSecond < 0) {
          String? refreshToken = await storageService.getRefreshToken();
          if (refreshToken != null && await refresh(refreshToken)) {
            accessToken = await storageService.getAccessToken();
            if (accessToken != null) {
              options.headers.addAll({'Authorization': 'Bearer $accessToken'});
            }
          } else {
            await toLoginView();
          }
        } else {
          options.headers.addAll({'Authorization': 'Bearer $accessToken'});
        }
        handler.next(options);
      },
      onError: (e, handler) async {
        return handler.next(e);
      },
    );
  }

  Future<bool> refresh(String refreshToken) async {
    try {
      Response response = await retryClient.post(
        '${BASE_URL}/auth/refresh',
        data: RefreshTokenRequest(refreshToken: refreshToken).toJson(),
      );
      if (response.statusCode == HttpStatus.ok) {
        Authentication authentication = Authentication.fromJson(response.data);
        await storageService.saveAccessToken(authentication.accessToken);
        await storageService.saveRefreshToken(authentication.refreshToken);
        return true;
      }
      else {
        await storageService.clearAllTokens();
      }
    } catch (e) {
      await storageService.clearAllTokens();
    }
    return false;
  }
}
Future<void> toLoginView() async {
  getx.Get.offAll(() => OnboardingView());
}

Map<String, dynamic>? decodeJwt(String token) {
  List<String> parts = token.split('.');
  if (parts.length != 3) {
    return null;
  }
  String decodedPayload = base64Url.normalize(parts[1]);
  while (decodedPayload.length % 4 != 0) {
    decodedPayload += '=';
  }
  decodedPayload = utf8.decode(base64Url.decode(decodedPayload));
  return json.decode(decodedPayload);
}

DateTime? getExp(String jwt) {
  Map<String, dynamic>? decodedToken = decodeJwt(jwt);
  if (decodedToken != null && decodedToken.containsKey("exp")) {
    int expirationTimestamp = decodedToken["exp"];
    return DateTime.fromMillisecondsSinceEpoch(expirationTimestamp * 1000);
  }
  return null;
}
