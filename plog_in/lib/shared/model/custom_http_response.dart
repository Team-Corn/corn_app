import 'package:json_annotation/json_annotation.dart';

part 'custom_http_response.g.dart';

@JsonSerializable()
class CustomHttpResponse {
  final dynamic data;

  CustomHttpResponse(this.data);

  factory CustomHttpResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomHttpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomHttpResponseToJson(this);
}
