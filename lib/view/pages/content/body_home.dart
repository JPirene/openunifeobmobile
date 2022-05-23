import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../data/Usuario.dart';
import 'package:http/http.dart' as http;
import 'tela_play.dart'; 

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

  var listLessons = [];
  Uri url = Uri.parse('http://192.168.0.100/api-of/aula/');
  bool loaded = false;
  void getLessons() async {
    if (loaded) {
      return;
    }
    Uri url = Uri.parse('http://192.168.0.100/api-of/aula/');
    http.Response response = await http.get(url);
    dynamic jsonResponse;

    if (response.statusCode == 200) {
      jsonResponse = jsonDecode(response.body);
      if (jsonResponse != false) {
        for (int index = 0; index < jsonResponse.length; index++) {
          listLessons.add(jsonResponse[index]);
        }
        print(listLessons[2]["nome_aula"]);
        loaded = true;
      } else {
        print("Não Há Cursos Disponiveis");
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    final usuario = ModalRoute.of(context)!.settings.arguments as Usuario;
    getLessons();
    return FutureBuilder(
        future: http.get(url),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                showListCurses(context),
              ],
            );
          } else {
            return Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text("Carregando..."),
            );
          }
        });
  }

  showMyCursesCarousel(BuildContext context) {
    if (2 < 1) {
      return Column(children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Continue Estudando...", style: labelStyle),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            scrollDirection: Axis.horizontal,
          ),
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
                      'Curso em andamento $i',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
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
      ]);
    }
    return SizedBox(width: 0, height: 0);
  }

  showListCurses(context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Descubra Novas Aulas",
              style: labelStyle, textAlign: TextAlign.left),
        ),
        Divider(height: 20),
        CarouselSlider(
          options: CarouselOptions(
            height: 600.0,
            scrollDirection: Axis.vertical,
          ),
          items: listLessons.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
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
                        child: Column(
                      children: [
                        Text(
                          i["nome_aula"],
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        Divider(
                          height: 20,
                          color: Colors.amber,
                        ),
                        ClipRRect(
                          // borderRadius: BorderRadius.all(Radius.circular(180)),
                          child: Image(
                            width: 200,
                            height: 200,
                            image: NetworkImage(i['foto_aula']),
                          ),
                        ),
                      ],
                    ),
                    
                    
                    ),
                    onTap: () {
                          print(i["id_aula"]);
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TelaPlay(),
                                    ),
                              );
                        }, 
                  
                  );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
