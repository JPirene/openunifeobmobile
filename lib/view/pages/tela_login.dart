// ignore_for_file: unused_import, unnecessary_new, prefer_typing_uninitialized_variables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:openunifeobmobile/data/Usuario.dart';
import 'package:openunifeobmobile/view/pages/tela_cadastro.dart';
import 'package:openunifeobmobile/view/theme/controlador_menu.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Uri url;
    http.Response response;
    var jsonResponse ;
    var idUsuario;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 73, 126),
      body: new Container(
        padding: EdgeInsets.only(top: 200),
        child: new Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05),
              child: new Column(
                children: <Widget>[
                  Text(
                    "Open Unifeob",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Usuário ou Email',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Senha',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () async=> {
                            url = Uri.parse(
                                // 'http://192.168.0.100/api-of/usuario/login/'+emailController.text.toString()+'/' +
                                // passwordController.text.toString()),
                                'http://192.168.0.100/api-of/usuario/login/jonatas@123.com.br/123456789'),
                            response = await http.get(url),
                            if (response.statusCode == 200)
                              {
                                jsonResponse = jsonDecode(response.body),
                                if(jsonResponse != false)
                                {
                                  idUsuario = jsonResponse[0]["id_usuario"], 
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ControladorMenu(),
                                    settings: RouteSettings(
                                      arguments: new Usuario(idUsuario),
                                    ),
                                    ),
                              )
                                } else {
                                  print("Usuário ou Senha Incorretos!"),
                                  showAlertDialog(context,"Atenção!", "Usuário ou Senha Incorretos!"),   
                                }
                              }
                            else
                              {
                                print(
                                    'Request failed with status: ${response.statusCode}.'),
                              }
                            
                          },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(400, 50)),
                      ),
                      child: new Text("Entrar")),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Text(
                    "Esqueceu sua senha? Clique aqui para recuperá-la.",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 1,
                      color: Colors.amber,
                      child: Column(
                        children: <Widget>[
                          Divider(height: 5),
                          TextButton(
                            onPressed: null,
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(Size(
                                  MediaQuery.of(context).size.width * 0.6, 40)),
                              maximumSize: MaterialStateProperty.all<Size>(Size(
                                  MediaQuery.of(context).size.width * 0.7, 40)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 1, 65, 97)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            child: Text("Continuar com Google"),
                          ),
                          Divider(height: 5),
                          TextButton(
                              onPressed: null,
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all<Size>(
                                    Size(
                                        MediaQuery.of(context).size.width * 0.6,
                                        40)),
                                maximumSize: MaterialStateProperty.all<Size>(
                                    Size(
                                        MediaQuery.of(context).size.width * 0.7,
                                        40)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 1, 65, 97)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                              child: Text("Continuar com Facebook")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Criar uma",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              TextButton(
                                  onPressed: () async => {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const TelaCadastro()),
                                        )
                                      },
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 0, 60, 255)),
                                  ),
                                  child: Text("conta",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


showAlertDialog(BuildContext context, String title, String message) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
        Navigator.pop(context); 
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(message),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
}
