import 'package:flutter/material.dart';
import 'package:siamobile/constant/color.dart';
import 'package:siamobile/page/home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                      color: ColorPalette.primaryColor,
                      borderRadius: new BorderRadius.only(
                        bottomLeft: const Radius.circular(75.0),
                        bottomRight: const Radius.circular(75.0),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Container(
                              width: 200,
                              height: 200,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "SIA",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                )),
            Flexible(
              child: Container(
                  margin: new EdgeInsets.only(left: 30, right: 30, top: 20),
                  padding: new EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.pink, width: 10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5)),
                      labelText: 'NIM',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  )),
            ),
            Flexible(
              child: Container(
                  margin: new EdgeInsets.only(left: 30, right: 30),
                  padding: new EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.pink, width: 10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5)),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Container(
                margin: new EdgeInsets.only(left: 30, right: 30),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 40,
                child: Text(
                  'Login'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  color: ColorPalette.primaryColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              alignment: Alignment.center,
              child: Text(
                "or",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 7.0),
              alignment: Alignment.center,
              child: Text(
                "Forget Password",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
