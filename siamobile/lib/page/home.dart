import 'package:flutter/material.dart';
import 'package:siamobile/constant/color.dart';

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
        appBar: AppBar(
          backgroundColor: ColorPalette.primaryColor,
          //title: Text("Danu Mahendra (201210225043)"),
          title: Transform(
            // you can forcefully translate values left side using Transform
            transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
            child: Text(
              "Danu Mahendra (201210225043)",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          centerTitle: false,
          titleSpacing: 0.0,
          leading: Container(),
        ),
        body: Container(
          alignment: Alignment.center,
          margin: new EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: new EdgeInsets.all(13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.all(3),
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
                    Container(
                      margin: new EdgeInsets.all(3),
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
                    Container(
                      margin: new EdgeInsets.all(3),
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
                    Container(
                      margin: new EdgeInsets.all(3),
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
                    Container(
                      margin: new EdgeInsets.all(3),
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
                            "Kalender Akademik",
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: new EdgeInsets.all(3),
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
                  ],
                ),
              ),
              Center(
                child: Text("SIA MOBILE APP - 2021"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
