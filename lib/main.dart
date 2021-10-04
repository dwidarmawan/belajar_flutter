import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Appbar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: new Icon(Icons.menu_sharp),
        title: Text(
          'Hello Appbar',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.search_rounded, color: Colors.black),
          Icon(
            Icons.more_vert_rounded,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        color: Colors.blue,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        padding: EdgeInsets.all(15),
        child: Icon(
          Icons.home,
          color: Colors.black,
          size: 100,
        ),
      ),
    );
  }
}
