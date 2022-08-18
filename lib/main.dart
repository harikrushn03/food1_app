import 'package:flutter/material.dart';
import 'package:food1_app/pages/login.dart';
import 'package:food1_app/pages/register.dart';
import 'package:food1_app/pages/welcome.dart';

import 'pages/register2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //  home: Homepage(),
      home: login(),
    );
  }
}
