import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:siamobile/constant/color.dart';
import 'package:siamobile/model/item_model.dart';
import 'package:siamobile/model/transkrip_model.dart';
import 'package:siamobile/provider/apim_provider.dart';

class TranscriptPage extends StatefulWidget {
  TranscriptPage({Key key}) : super(key: key);

  @override
  _TranscriptPageState createState() => _TranscriptPageState();
}

class _TranscriptPageState extends State<TranscriptPage> {
  var _provider;

  @override
  void initState() {
    super.initState();
    getProfile();
  }

  Future<void> getProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final Map<String, dynamic> postdata = {"token": prefs.getString('token')};
    _provider = Provider.of<ProviderAPIM>(context, listen: false)
        .getTranscript(postdata);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getProfile();
  }

  List<ItemModel> prepareData = <ItemModel>[
    ItemModel(
      header: 'Milk',
      bodyModel: BodyModel(price: 20, quantity: 10),
    ),
    ItemModel(
      header: 'Coconut',
      bodyModel: BodyModel(price: 35, quantity: 5),
    ),
    ItemModel(
      header: 'Watch',
      bodyModel: BodyModel(price: 800, quantity: 15),
    ),
    ItemModel(
      header: 'Cup',
      bodyModel: BodyModel(price: 80, quantity: 150),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryColor,
        title: Text(
          "Transkrip Nilai",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          Container(
            margin: new EdgeInsets.only(right: 10),
            child: Icon(Icons.cached),
          )
        ],
      ),
      body: FutureBuilder<TranskripModel>(
          future: _provider,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: ListView.builder(
                    itemCount: prepareData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ExpansionPanelList(
                        animationDuration: Duration(seconds: 1),
                        children: [
                          ExpansionPanel(
                            body: Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    for (var i = 0; i < 6; i++)
                                      Container(
                                        margin: const EdgeInsets.all(5),
                                        child: Row(
                                          children: [
                                            Container(
                                                width: 200,
                                                margin: new EdgeInsets.only(
                                                    left: 8),
                                                child: Text(
                                                    "androidVersions[index]")),
                                            Container(
                                                width: 10,
                                                margin: new EdgeInsets.only(
                                                    left: 8),
                                                child: Text(":")),
                                            Container(
                                                color: Colors.amberAccent,
                                                width: 20,
                                                margin: new EdgeInsets.only(
                                                    left: 8),
                                                child: Text("A+")),
                                          ],
                                        ),
                                      ),
                                  ],
                                )),
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return Container(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  "Semester " + (index + 1).toString(),
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                  ),
                                ),
                              );
                            },
                            isExpanded: prepareData[index].isExpanded,
                          )
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            prepareData[index].isExpanded =
                                !prepareData[index].isExpanded;
                          });
                        },
                      );
                    },
                  ),
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
