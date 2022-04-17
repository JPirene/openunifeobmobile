// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:telaprincipal/pages/tela_menu.dart';
import 'package:openunifeobmobile/view/pages/tela_cadastro.dart';
import 'package:openunifeobmobile/view/pages/tela_login.dart';


class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  String _nome = "";
  String _email = "";
  String _senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 73, 126),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _email = value.trim();
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'E-Mail',
                  ),
                ),
                SizedBox(height: 10, width: 10),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _senha = value.trim();
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Color(0xffFDC300),
                    hintText: 'Senha',
                  ),
                ),
                SizedBox(height: 10, width: 10),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _nome = value.trim();
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Color(0xffFDC300),
                    hintText: 'Nome',
                  ),
                ),
                SizedBox(height: 10, width: 10),
                ElevatedButton(
                    onPressed: () async {
                      var url =
                          Uri.parse('https://openfeob.000webhostapp.com/');

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const TelaMenu()),
                      // );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffFDC300)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(400, 50)),
                    ),
                    child: Text("Cadastrar")),
                    Divider(height: 5), 
                    ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TelaLogin()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color.fromARGB(255, 118, 23, 23)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(400, 50)),
                    ),
                    child: Text("Voltar"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}