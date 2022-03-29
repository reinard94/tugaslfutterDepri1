import 'package:flutter/material.dart';
import 'package:flutter_application_1/details_page.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final routes = {
    HomePage.tag: (context) => const HomePage(),
    DetailsPage.tag: (context) => DetailsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Loginpage(),
    );
  }
}