import 'package:fishery/reviews.dart';
import 'package:fishery/reviews2.dart';
import 'package:flutter/material.dart';

import 'businessCard.dart';
import 'businessname.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/homepage': (context) => MyHomePage(),
        '/bussinesscard': (context) => BusinessCard(),
        '/reviews': (context) => Reviews(),
        '/businessname': (context) => BusinessName(),
                '/reviews2': (context) => Reviews2(),
        // When navigating to the "/second" route, build the SecondScreen widget.
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              minWidth: 200,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.pink[50],
              onPressed: () => Navigator.pushNamed(context, '/bussinesscard'),
              child: Text("Buy Taje Nuste",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 25.0,
                      color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
