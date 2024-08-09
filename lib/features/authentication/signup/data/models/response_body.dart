import 'package:json_annotation/json_annotation.dart';

part 'response_body.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? message;
  UserData? userData;
  bool? status;
  int? code;

  SignUpResponse({this.message, this.status, this.code});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;

  @JsonKey(name: 'username')
  String? userName;

  UserData({this.token, this.userName});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
