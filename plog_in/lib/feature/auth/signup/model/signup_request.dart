import 'package:json_annotation/json_annotation.dart';

part 'signup_request.g.dart';

@JsonSerializable()
class SignupRequest {
  final String id;
  final String password;
  final String confirmPassword;
  final String email;
  final String name;
  final String birth;
  final String gender;
  final String fileUrl;

  SignupRequest({
    required this.id,
    required this.password,
    required this.confirmPassword,
    required this.email,
    required this.name,
    required this.birth,
    required this.gender,
    required this.fileUrl,
  });

  factory SignupRequest.fromJson(Map<String, dynamic> json) => _$SignupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignupRequestToJson(this);
}