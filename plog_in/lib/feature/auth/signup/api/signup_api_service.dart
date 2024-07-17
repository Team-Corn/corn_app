import 'dart:io';

import 'package:dio/dio.dart';
import 'package:plog_in/feature/auth/signup/model/signup_request.dart';
import 'package:plog_in/shared/model/custom_http_response.dart';
import 'package:plog_in/shared/net/api_constants.dart';
import 'package:retrofit/http.dart';

part 'signup_api_service.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class SignupApiService {
  factory SignupApiService(Dio dio) = _SignupApiService;

  @POST("/member/register")
  Future<SignupResponse> register(
      @Body() SignupRequest signupRequest,
      );
}

part 'api_service.g.dart';

@RestApi(baseUrl: "http://172.16.7.164:8080")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

}
