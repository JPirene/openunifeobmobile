import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BodyAprendizado extends StatefulWidget {
  const BodyAprendizado({ Key? key }) : super(key: key);

  @override
  State<BodyAprendizado> createState() => _BodyAprendizadoState();
}

class _BodyAprendizadoState extends State<BodyAprendizado> {


    static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width, height: 200,
            child: Container(
              color: Colors.grey,
              child: Column(
                children: [
                  Text("Seu Progresso", style: optionStyle,),
                  Row(
                    children: [
                      Container(child: Text("Matriculados"), width: MediaQuery.of(context).size.width * 0.33, padding: EdgeInsets.only(left: 20),),
                      Container(child: Text("Em Andamento"), width: MediaQuery.of(context).size.width * 0.33, padding: EdgeInsets.only(left: 20),),
                      Container(child: Text("Finalizados"), width: MediaQuery.of(context).size.width * 0.33, padding: EdgeInsets.only(left: 20),),
                    ],
                  ),
                  Row(
                    children: [
                      Container(child: Text("2", style: optionStyle,), width: MediaQuery.of(context).size.width * 0.33, padding: EdgeInsets.only(left: 20),),
                      Container(child: Text("2", style: optionStyle,), width: MediaQuery.of(context).size.width * 0.33, padding: EdgeInsets.only(left: 20),),
                      Container(child: Text("2", style: optionStyle,), width: MediaQuery.of(context).size.width * 0.33, padding: EdgeInsets.only(left: 20),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 20,),
                  Text("Continue estudando...", style: optionStyle,), 
                  Divider(
                  height: 25,
                  thickness: 5,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.white,
                ),
          CarouselSlider(
          options: CarouselOptions(height: 200.0),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Text(
                      'Curso Matriculado $i',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ));
              },
            );
          }).toList(),
        ),
        ],
        
      ),
    );
  }
}