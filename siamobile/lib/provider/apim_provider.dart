import 'package:flutter/material.dart';
import 'package:siamobile/helper/apihelper.dart';
import 'package:siamobile/model/auth_model.dart';
import 'package:siamobile/model/info_model.dart';
import 'package:siamobile/model/profile_model.dart';
import 'package:siamobile/model/status_model.dart';
import 'package:siamobile/model/transkrip_model.dart';

class ProviderAPIM with ChangeNotifier {
  Future<AuthModel> login(Map<String, dynamic> postdata) async {
    String reply = await apiHttpConfig(
        postdata, "${configAPIService["URL_SERVICE"]}/appauth");
    return authModelFromJson(reply);
  }

  Future<InfoModel> getInfo() async {
    String reply = await apiHttpConfig(
        null, "${configAPIService["URL_SERVICE"]}/info",
        method: "get");
    return infoModelFromJson(reply);
  }

  Future<ProfileModel> getProfile(Map<String, dynamic> postdata) async {
    String reply = await apiHttpConfig(
        postdata, "${configAPIService["URL_SERVICE"]}/profile");
    return profileModelFromJson(reply);
  }

  Future<StatusModel> getStatus(Map<String, dynamic> postdata) async {
    String reply = await apiHttpConfig(
        postdata, "${configAPIService["URL_SERVICE"]}/status");
    return statusModelFromJson(reply);
  }

  Future<TranskripModel> getTranscript(Map<String, dynamic> postdata) async {
    String reply = await apiHttpConfig(
        postdata, "${configAPIService["URL_SERVICE"]}/transcript");
    return transkripModelFromJson(reply);
  }

  Future<AuthModel> getSchedule(Map<String, dynamic> postdata) async {
    String reply = await apiHttpConfig(
        postdata, "${configAPIService["URL_SERVICE"]}/schedule");
    return authModelFromJson(reply);
  }

  Future<void> logout() async {
    String reply = await apiHttpConfig(
        null, "${configAPIService["URL_SERVICE"]}/applogout");
    return 1;
  }
}
