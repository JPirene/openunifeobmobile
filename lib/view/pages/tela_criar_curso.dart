// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:openunifeobmobile/view/tela_login.dart';

class TelaCriarCurso extends StatefulWidget {
  const TelaCriarCurso({Key? key}) : super(key: key);

  @override
  _TelaCriarCursoState createState() => _TelaCriarCursoState();
}

class _TelaCriarCursoState extends State<TelaCriarCurso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A3446),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Criar curso",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50, width: 10),
                Row(
                  children: const [
                    Text(
                      "Título do curso:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'insira o título do curso',
                  ),
                ),
                SizedBox(height: 10, width: 10),
                Row(
                  children: const [
                    Text(
                      "Descrição:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Color(0xffFDC300),
                    hintText: 'Descrição',
                  ),
                ),
                SizedBox(height: 10, width: 10),
                Row(
                  children: const [
                    Text(
                      "Tempo estimado:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Color(0xffFDC300),
                    hintText: 'Tempo estimado para a conclusão do curso',
                  ),
                ),
                SizedBox(height: 10, width: 10),
                Row(
                  children: const [
                    Text(
                      "Área do curso:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Color(0xffFDC300),
                    hintText: 'Digite a área do curso',
                  ),
                ),
                SizedBox(height: 10, width: 10),
                Row(
                  children: const [
                    Text(
                      "Vídeo sobre:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Color(0xffFDC300),
                    hintText: 'Coloque a url do vídeo',
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      "Miniatura do curso:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blueGrey),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(250, 40)),
                      ),
                      child: Text("Inserir miniatura do vídeo"),
                    ),
                  ],
                ),
                SizedBox(height: 30, width: 10),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const TelaLogin()),
                      // );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffFDC300)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(400, 50)),
                    ),
                    child: Text("Cadastrar")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
