import 'package:flutter/material.dart';

class BodyEnviar extends StatefulWidget {
  const BodyEnviar({ Key? key }) : super(key: key);

  @override
  State<BodyEnviar> createState() => _BodyEnviarState();
}

class _BodyEnviarState extends State<BodyEnviar> {


    static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Enviar", style: optionStyle),
    );
  }
}