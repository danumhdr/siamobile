import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:siamobile/constant/color.dart';
import 'package:siamobile/model/status_model.dart';
import 'package:siamobile/provider/apim_provider.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
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
        Provider.of<ProviderAPIM>(context, listen: false).getStatus(postdata);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getProfile();
  }

  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorPalette.primaryColor,
          title: Text(
            "Status Akademik",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: FutureBuilder<StatusModel>(
            future: _provider,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey, spreadRadius: 1),
                          ],
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 70,
                              child: Icon(Icons.inbox_outlined),
                            ),
                            Container(
                                child: Text(
                              "Semester " + (index + 1).toString(),
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 17),
                            )),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                      width: 40,
                                      margin: const EdgeInsets.all(3),
                                      child: Text("Aktif")),
                                  Container(
                                      child: Row(
                                    children: [
                                      Container(width: 40, child: Text("SKS")),
                                      Text(":  24"),
                                    ],
                                  )),
                                  Container(
                                      child: Row(
                                    children: [
                                      Container(width: 40, child: Text("IPS")),
                                      Text(":  3.5"),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: androidVersions.length,
                  ),
                );
              } else {
                return CircularProgressIndicator();
              }
            }));
  }
}
