import 'package:flutter/material.dart';
import 'tela_login.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaLogin(),
      routes: <String, WidgetBuilder>{
        '/first' : (BuildContext context) => MyApp(),
      },
    );
  }
}
