import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top Movie'),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello World',
                style: TextStyle(
                    fontSize: 24.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Merriweather'),
              ),
              Image.asset('assets/poster_1.jpg', fit: BoxFit.cover),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          onPressed: null,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
