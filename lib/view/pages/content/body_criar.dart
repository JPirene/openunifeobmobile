import 'package:flutter/material.dart';

class BodyCriar extends StatefulWidget {
  const BodyCriar({ Key? key }) : super(key: key);

  @override
  State<BodyCriar> createState() => _BodyCriarState();
}

class _BodyCriarState extends State<BodyCriar> {


    static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Criar", style: optionStyle),
    );
  }
}