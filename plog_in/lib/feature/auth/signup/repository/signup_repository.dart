// import 'dart:io';
//
// import 'package:dio/dio.dart';
// import 'package:plog_in/feature/auth/signup/api/signup_api_service.dart';
// import 'package:plog_in/feature/auth/signup/model/signup_request.dart';
// import 'package:plog_in/shared/model/api_response.dart';
//
// abstract class SignupRepository {
//   Future<ApiResponse> register({required SignupRequest signupRequest});
// }
//
// class SignupRepositoryImpl implements SignupRepository {
//   // final _apiService = SignupApiService(HttpClient().client);
//   //
//   @override
//   Future<ApiResponse> register({required SignupRequest signupRequest}) async {
//     ApiResponse apiResponse = await _apiService.register(signupRequest: signupRequest).then((httpResponse) async {
//       return ApiResponse(
//           // statusCode: httpResponse.statusCode,
//           // data: httpResponse.data,
//       );
//     }).onError((DioException e, stackTrace) async {
//       return ApiResponse.error(
//           (e.response == null)
//               ? HttpStatus.badRequest : e.response!.statusCode!,
//           (e.response == null)
//               ? "클라이언트 에러" : e.response!.statusMessage!
//       );
//     });
//
//     print(apiResponse);
//
//     return apiResponse;
//   }
//
// }
