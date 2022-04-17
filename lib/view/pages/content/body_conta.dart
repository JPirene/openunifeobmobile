import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:openunifeobmobile/view/pages/tela_login.dart';

class BodyConta extends StatefulWidget {
  const BodyConta({Key? key}) : super(key: key);

  @override
  State<BodyConta> createState() => _BodyContaState();
}

class _BodyContaState extends State<BodyConta> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);
  static const TextStyle nameStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
  static const TextStyle labelStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(180)),
            child: Image(
              width: 100,
              height: 100,
              image: NetworkImage(
                  'https://scontent-gru1-2.xx.fbcdn.net/v/t1.6435-9/89580856_3522238027847369_1010792957948723200_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=174925&_nc_eui2=AeEKmBQqX8aKQ7XU9x0BU68MUx_aRl33gxJTH9pGXfeDEpE7f4bwnLvi9GhtPVHvgWBgfkjMRvSzBEJUSzG1fB5b&_nc_ohc=ipWgYl4mFQYAX9RZbyP&_nc_ht=scontent-gru1-2.xx&oh=00_AT_eL4aAO2a0gJgBDS82GC-cIUJpXwDLqp_mB5oWcRxOkg&oe=627FC24D'),
            ),
          ),
        ),
        Text(
          "Jefferson Ventura",
          style: nameStyle,
        ),
        Divider(
          height: 10,
        ),
        Text(
          "ventura@sou.unifeob.edu.br",
          style: optionStyle,
        ),
        Divider(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 100,
          child: Text(
            "Olá sou Jefferson Ventura e faço ADS, se liga nos meus cursos pra adquirir um pouco do conhecimento que aprendi na feob!",
            style: optionStyle,
          ),
        ),
        Divider(
          height: 10,
        ),
        Text(
          "Muzambinho, MG",
          style: optionStyle,
        ),
        Divider(
          height: 25,
          thickness: 5,
          indent: 0,
          endIndent: 0,
          color: Colors.white,
        ),
        Text(
          "Seus cursos publicados",
          style: optionStyle,
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
                      'Curso $i enviado',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ));
              },
            );
          }).toList(),
        ),
        ElevatedButton(
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TelaLogin()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 118, 23, 23)),
              minimumSize: MaterialStateProperty.all<Size>(Size(400, 50)),
            ),
            child: Text("Sair"))
      ]),
    );
  }
}
