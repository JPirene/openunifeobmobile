import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

  static const TextStyle labelStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextAlign labelAlign = TextAlign.right;

  static const InputDecoration searchStyle = InputDecoration(
      suffixIcon: Icon(Icons.search),
      filled: true,
      fillColor: Colors.white,
      hintText: "Pesquise aqui seu próximo curso");

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: searchStyle,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Continue Estudando...", style: labelStyle),
          ),
          CarouselSlider(
            options: CarouselOptions(height: 200.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      decoration: BoxDecoration(color: Colors.blue[800], borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
                      child: Text(
                        'Curso em andamento $i',
                        style: TextStyle(fontSize: 16.0, color: Colors.white, ),
                      ));
                },
              );
            }).toList(),
          ),
          Divider(
            height: 25,
            thickness: 5,
            indent: 0,
            endIndent: 0,
            color: Colors.white,
          ), 
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Descubra Novos Cursos",
                style: labelStyle, textAlign: TextAlign.left),
          ),
          Divider(height: 20),
        ],
      ),
    );
  }
}