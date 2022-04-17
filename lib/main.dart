import 'package:flutter/material.dart';
import 'view/pages/tela_login.dart'; 

void main() => runApp(const MyApp());

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
