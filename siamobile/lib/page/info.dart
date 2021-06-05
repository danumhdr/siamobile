import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:siamobile/constant/color.dart';
import 'package:siamobile/model/info_model.dart';
import 'package:siamobile/provider/apim_provider.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
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
  var _provider;

  @override
  void initState() {
    super.initState();
    _provider = Provider.of<ProviderAPIM>(context, listen: false).getInfo();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      _provider = Provider.of<ProviderAPIM>(context, listen: false).getInfo();
    });
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: ColorPalette.primaryColor, width: 1)),
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryColor,
        title: Text(
          "Informasi",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          Container(
            margin: new EdgeInsets.only(right: 10),
            child: Icon(Icons.cached),
          )
        ],
      ),
      body: FutureBuilder<InfoModel>(
        future: _provider,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey,
                  );
                },
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            child: Icon(Icons.inbox_outlined),
                          ),
                          Container(
                              margin: new EdgeInsets.only(left: 8),
                              child: Text(snapshot.data.data[index].judul)),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: androidVersions.length,
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
