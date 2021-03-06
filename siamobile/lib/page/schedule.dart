import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:siamobile/constant/color.dart';
import 'package:siamobile/model/auth_model.dart';
import 'package:siamobile/provider/apim_provider.dart';

class SchedulePage extends StatefulWidget {
  SchedulePage({Key key}) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  var _provider;
  int smstr;

  @override
  void initState() {
    super.initState();
    getProfile();
  }

  Future<void> getProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final Map<String, dynamic> postdata = {
      "token": prefs.getString('token'),
      "semester": _selectedLocation
    };
    _provider =
        Provider.of<ProviderAPIM>(context, listen: false).getSchedule(postdata);
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
  List<String> _locations = ['1', '2', '3', '4', '5', '6', '7', '8'];
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
              child: FutureBuilder<AuthModel>(
                  future: _provider,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return ListView.separated(
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
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
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
