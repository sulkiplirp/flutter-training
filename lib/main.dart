import 'package:flutter/material.dart';
import 'homepage.dart';
import 'loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        'home': (BuildContext context) => Homepage(),
        'login': (BuildContext context) => LoginPage(),
      },
    );
  }
}
