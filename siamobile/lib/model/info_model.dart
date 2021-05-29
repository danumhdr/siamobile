// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

InfoModel profileModelFromJson(String str) =>
    InfoModel.fromJson(json.decode(str));

String profileModelToJson(InfoModel data) => json.encode(data.toJson());

class InfoModel {
  InfoModel({
    this.status,
    this.message,
    this.data,
  });

  int status;
  String message;
  Map<String, Datum> data;

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
        status: json["status"],
        message: json["message"],
        data: Map.from(json["data"])
            .map((k, v) => MapEntry<String, Datum>(k, Datum.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": Map.from(data)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Datum {
  Datum({
    this.img,
    this.judul,
    this.isi,
  });

  String img;
  String judul;
  String isi;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        img: json["img"],
        judul: json["judul"],
        isi: json["isi"],
      );

  Map<String, dynamic> toJson() => {
        "img": img,
        "judul": judul,
        "isi": isi,
      };
}
