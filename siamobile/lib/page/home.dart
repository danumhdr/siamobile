import 'package:flutter/material.dart';
import 'package:siamobile/constant/color.dart';
import 'package:siamobile/page/info.dart';
import 'package:siamobile/page/profile.dart';
import 'package:siamobile/page/schedule.dart';
import 'package:siamobile/page/status.dart';
import 'package:siamobile/page/transcript.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorPalette.primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Danu Mahendra (201210225043)",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: new EdgeInsets.all(30),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(75.0),
                    )),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()),
                        );
                      },
                      child: Container(
                        margin: new EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                                color: ColorPalette.primaryColor,
                                spreadRadius: 1),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    color: Colors.black54,
                                  )),
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SchedulePage()),
                        );
                      },
                      child: Container(
                        margin: new EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                                color: ColorPalette.primaryColor,
                                spreadRadius: 1),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    color: Colors.black54,
                                  )),
                            ),
                            Text(
                              "Jadwal Perkuliahan",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StatusPage()),
                        );
                      },
                      child: Container(
                        margin: new EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                                color: ColorPalette.primaryColor,
                                spreadRadius: 1),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    color: Colors.black54,
                                  )),
                            ),
                            Text(
                              "Status Akademik",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TranscriptPage()),
                        );
                      },
                      child: Container(
                        margin: new EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                                color: ColorPalette.primaryColor,
                                spreadRadius: 1),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    color: Colors.black54,
                                  )),
                            ),
                            Text(
                              "Transkrip Nilai",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => CalendarPage()),
                    //     );
                    //   },
                    //   child: Container(
                    //     margin: new EdgeInsets.all(5),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(18),
                    //       boxShadow: [
                    //         BoxShadow(
                    //             color: ColorPalette.primaryColor,
                    //             spreadRadius: 1),
                    //       ],
                    //       color: Colors.white,
                    //     ),
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: [
                    //         Container(
                    //           child: ClipRRect(
                    //               borderRadius: BorderRadius.circular(100.0),
                    //               child: Container(
                    //                 width: 80,
                    //                 height: 80,
                    //                 color: Colors.black54,
                    //               )),
                    //         ),
                    //         Text(
                    //           "Kalender Akademik",
                    //           style: TextStyle(
                    //               fontSize: 14.0, fontWeight: FontWeight.w400),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InfoPage()),
                        );
                      },
                      child: Container(
                        margin: new EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                                color: ColorPalette.primaryColor,
                                spreadRadius: 1),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    color: Colors.black54,
                                  )),
                            ),
                            Text(
                              "Informasi",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Widget cancelButton = FlatButton(
                          child: Text("Batal"),
                          onPressed: () {},
                        );
                        Widget continueButton = FlatButton(
                          child: Text("Keluar"),
                          onPressed: () {},
                        );
                        // set up the AlertDialog
                        AlertDialog alert = AlertDialog(
                          content: Text("Keluar dari aplikasi ?"),
                          actions: [
                            cancelButton,
                            continueButton,
                          ],
                        );
                        // show the dialog
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alert;
                          },
                        );
                      },
                      child: Container(
                        margin: new EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                color: ColorPalette.primaryColor,
                                spreadRadius: 1),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    color: Colors.black54,
                                  )),
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Text("SIA MOBILE APP - 2021"),
            )
          ],
        ),
      ),
    );
  }
}
