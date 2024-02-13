import 'package:flutter/material.dart';
import 'pages/Login.dart';
import 'pages/Menu.dart';
import 'pages/Profile.dart';
import 'pages/CheckIn.dart';
import 'pages/Confirm.dart';
import 'pages/Success.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Login(),
        '/Menu': (BuildContext context) => Menu(),
        '/Profile': (BuildContext context) => Profile(),
        '/CheckIn': (BuildContext context) => CheckIn(),
        '/Confirm': (BuildContext context) => Confirm(),
        '/Success': (BuildContext context) => Success(),

      },
    )
  );
}
