import 'package:json_annotation/json_annotation.dart';

part 'specializations_response.g.dart';

@JsonSerializable()
class SpecializationsResponse {
  @JsonKey(name: 'data')
  List<SpecializationsData?>? specializationDataList;

  SpecializationsResponse({
    this.specializationDataList,
  });

  factory SpecializationsResponse.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctor?>? doctorsList;

  SpecializationsData({
    this.id,
    this.name,
    this.doctorsList,
  });

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);
}

@JsonSerializable()
class Doctor {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  @JsonKey(name: 'appoint_price')
  int? price;
  String degree;

  Doctor({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.price,
    required this.degree,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}
