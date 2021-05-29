// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  AuthModel({
    this.status,
    this.message,
    this.data,
  });

  int status;
  String message;
  Data data;

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
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
    this.token,
    this.id,
    this.userid,
    this.groupId,
    this.groupName,
    this.isActive,
  });

  String token;
  String id;
  String userid;
  String groupId;
  String groupName;
  String isActive;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
        id: json["id"],
        userid: json["userid"],
        groupId: json["group_id"],
        groupName: json["group_name"],
        isActive: json["is_active"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "id": id,
        "userid": userid,
        "group_id": groupId,
        "group_name": groupName,
        "is_active": isActive,
      };
}
