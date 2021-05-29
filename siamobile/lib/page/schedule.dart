import 'package:flutter/material.dart';
import 'package:siamobile/constant/color.dart';

class SchedulePage extends StatefulWidget {
  SchedulePage({Key key}) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
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
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie"
  ];
  List<String> _locations = ['1', '2', '3', '4'];
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryColor,
        title: Text(
          "Jadwal Perkuliahan",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          Container(
            margin: new EdgeInsets.only(right: 10),
            child: Icon(Icons.cached),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              child: DropdownButton(
                hint: Text('Pilih Semester'),
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.inbox_outlined),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: new EdgeInsets.only(left: 15),
                                  child: Text("MKU-1001")),
                              Container(
                                  margin: new EdgeInsets.only(left: 15),
                                  child: Text("Agama")),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                            children: [
                              Container(child: Text("Kamis")),
                              Container(child: Text("Kelas A")),
                              Container(child: Text("10.00 - 12.00")),
                            ],
                          ),
                        ),
                        Text("22/30 Orang")
                      ],
                    ),
                  );
                },
                itemCount: androidVersions.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
