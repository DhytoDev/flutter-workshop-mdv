import 'package:flutter/material.dart';
import 'package:flutter_movie_app_mdv/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green[500],
        primaryColorDark: Colors.green[700],
        accentColor: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}