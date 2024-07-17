// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequest _$SignupRequestFromJson(Map<String, dynamic> json) =>
    SignupRequest(
      id: json['id'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      birth: json['birth'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$SignupRequestToJson(SignupRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'email': instance.email,
      'name': instance.name,
      'birth': instance.birth,
      'gender': instance.gender,
    };
