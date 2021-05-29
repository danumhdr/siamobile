// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  ProfileModel({
    this.status,
    this.message,
    this.data,
  });

  int status;
  String message;
  Data data;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.ipk,
    this.semester,
    this.namaMhs,
    this.nim,
    this.prodi,
    this.fakultas,
  });

  String ipk;
  int semester;
  String namaMhs;
  String nim;
  String prodi;
  String fakultas;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        ipk: json["ipk"],
        semester: json["semester"],
        namaMhs: json["nama_mhs"],
        nim: json["nim"],
        prodi: json["prodi"],
        fakultas: json["fakultas"],
      );

  Map<String, dynamic> toJson() => {
        "ipk": ipk,
        "semester": semester,
        "nama_mhs": namaMhs,
        "nim": nim,
        "prodi": prodi,
        "fakultas": fakultas,
      };
}
