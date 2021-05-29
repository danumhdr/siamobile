// To parse this JSON data, do
//
//     final transkripModel = transkripModelFromJson(jsonString);

import 'dart:convert';

TranskripModel transkripModelFromJson(String str) =>
    TranskripModel.fromJson(json.decode(str));

String transkripModelToJson(TranskripModel data) => json.encode(data.toJson());

class TranskripModel {
  TranskripModel({
    this.status,
    this.message,
    this.data,
  });

  int status;
  String message;
  Data data;

  factory TranskripModel.fromJson(Map<String, dynamic> json) => TranskripModel(
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
    this.listdata,
    this.ipk,
    this.namaMhs,
    this.nim,
    this.prodi,
    this.fakultas,
  });

  List<Listdatum> listdata;
  String ipk;
  String namaMhs;
  String nim;
  String prodi;
  String fakultas;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        listdata: List<Listdatum>.from(
            json["listdata"].map((x) => Listdatum.fromJson(x))),
        ipk: json["ipk"],
        namaMhs: json["nama_mhs"],
        nim: json["nim"],
        prodi: json["prodi"],
        fakultas: json["fakultas"],
      );

  Map<String, dynamic> toJson() => {
        "listdata": List<dynamic>.from(listdata.map((x) => x.toJson())),
        "ipk": ipk,
        "nama_mhs": namaMhs,
        "nim": nim,
        "prodi": prodi,
        "fakultas": fakultas,
      };
}

class Listdatum {
  Listdatum({
    this.kdkmktrlnm,
    this.namaMatakuliah,
    this.sksMatakuliah,
    this.nlakhtrlnm,
    this.thsmstrlnm,
    this.bobottrlnm,
  });

  String kdkmktrlnm;
  String namaMatakuliah;
  String sksMatakuliah;
  String nlakhtrlnm;
  String thsmstrlnm;
  String bobottrlnm;

  factory Listdatum.fromJson(Map<String, dynamic> json) => Listdatum(
        kdkmktrlnm: json["KDKMKTRLNM"],
        namaMatakuliah: json["nama_matakuliah"],
        sksMatakuliah: json["sks_matakuliah"],
        nlakhtrlnm: json["NLAKHTRLNM"],
        thsmstrlnm: json["THSMSTRLNM"],
        bobottrlnm: json["BOBOTTRLNM"],
      );

  Map<String, dynamic> toJson() => {
        "KDKMKTRLNM": kdkmktrlnm,
        "nama_matakuliah": namaMatakuliah,
        "sks_matakuliah": sksMatakuliah,
        "NLAKHTRLNM": nlakhtrlnm,
        "THSMSTRLNM": thsmstrlnm,
        "BOBOTTRLNM": bobottrlnm,
      };
}
