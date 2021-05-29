// To parse this JSON data, do
//
//     final transkripModel = transkripModelFromJson(jsonString);

import 'dart:convert';

StatusModel transkripModelFromJson(String str) =>
    StatusModel.fromJson(json.decode(str));

String transkripModelToJson(StatusModel data) => json.encode(data.toJson());

class StatusModel {
  StatusModel({
    this.status,
    this.message,
    this.data,
  });

  int status;
  String message;
  Map<String, Datum> data;

  factory StatusModel.fromJson(Map<String, dynamic> json) => StatusModel(
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
    this.semester,
    this.status,
    this.totalsks,
    this.ips,
  });

  int semester;
  String status;
  int totalsks;
  String ips;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        semester: json["semester"],
        status: json["status"],
        totalsks: json["totalsks"],
        ips: json["ips"],
      );

  Map<String, dynamic> toJson() => {
        "semester": semester,
        "status": status,
        "totalsks": totalsks,
        "ips": ips,
      };
}
