import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:siamobile/constant/color.dart';
import 'package:siamobile/model/profile_model.dart';
import 'package:siamobile/provider/apim_provider.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var _provider;

  @override
  void initState() {
    super.initState();
    getProfile();
  }

  Future<void> getProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final Map<String, dynamic> postdata = {"token": prefs.getString('token')};
    _provider =
        Provider.of<ProviderAPIM>(context, listen: false).getProfile(postdata);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorPalette.primaryColor,
          title: Text(
            "Profil / Biodata",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: FutureBuilder<ProfileModel>(
            future: _provider,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  children: [
                    SizedBox(height: 30),
                    Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            width: 300,
                            height: 180,
                            color: Colors.black54,
                          )),
                    ),
                    SizedBox(height: 35),
                    Container(
                      padding: new EdgeInsets.all(8),
                      margin: new EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: Row(
                        children: [
                          Container(
                              width: 100,
                              child: Text(
                                "NIM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              )),
                          Text(
                            ":",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Text("   "),
                          Text(
                            "201210225043",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: new EdgeInsets.all(8),
                      margin: new EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: Row(
                        children: [
                          Container(
                              width: 100,
                              child: Text(
                                "Nama",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              )),
                          Text(
                            ":",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Text("   "),
                          Text(
                            "Danu Mahendra",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: new EdgeInsets.all(8),
                      margin: new EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Row(
                        children: [
                          Container(
                              width: 100,
                              child: Text(
                                "Prodi/Fakultas",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              )),
                          Text(
                            ":",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Text("   "),
                          Text(
                            "Teknik/Teknik Informatika",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: new EdgeInsets.all(8),
                      margin: new EdgeInsets.fromLTRB(50, 0, 30, 0),
                      child: Row(
                        children: [
                          Container(
                              width: 100,
                              child: Text(
                                "Semester",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              )),
                          Text(
                            ":",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Text("   "),
                          Text(
                            "7",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: new EdgeInsets.all(8),
                      margin: new EdgeInsets.fromLTRB(50, 0, 30, 0),
                      child: Row(
                        children: [
                          Container(
                              width: 100,
                              child: Text(
                                "IPK",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              )),
                          Text(
                            ":",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Text("   "),
                          Text(
                            "2.00",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return CircularProgressIndicator();
              }
            }),
      )),
    );
  }
}
