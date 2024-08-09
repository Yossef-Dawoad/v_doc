import 'package:json_annotation/json_annotation.dart';

part 'request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final int? phone;
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  final int? gender;

  SignUpRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    this.gender,
    this.phone,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);

  factory SignUpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestBodyFromJson(json);
}
