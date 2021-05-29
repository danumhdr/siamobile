import 'package:flutter/material.dart';
import 'package:siamobile/constant/color.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
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
      body: Container(
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
      ),
    );
  }
}
