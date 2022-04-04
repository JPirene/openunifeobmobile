import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({ Key? key }) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  decoration: new BoxDecoration(color: Color.fromARGB(100, 0, 73, 126)),
      backgroundColor: Color.fromARGB(255, 0,73,126),
      body: new Container(
        padding: EdgeInsets.only(top: 200),
        child: new Column(
          children: <Widget>[
            new Column(
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
              onPressed: null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                minimumSize: MaterialStateProperty.all<Size>(Size(400, 50)), 
              ),
              child: new Text("Entrar")
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Text("Esqueceu sua senha? Clique aqui para recuperá-la.",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
              ],
            ),
          ],
        ), 
        ),
      bottomSheet: Row(
        children: <Widget>[
          Container(
            height: 150,
            width: 390,
            color: Colors.amber,
            child: Column(
              children: <Widget>[
                TextButton(
                  onPressed: null, 
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 1, 65, 97)), 
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                  ),
                  child: Text("Conectar com Google"),
                ),
                TextButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 1, 65, 97)), 
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                  ),
                  child: Text("Conectar com Facebook")
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Criar uma",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white, 
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: null, 
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: Text("Conta")
                    )
                  ],
                ), 
              ],
            ),
          ), 
        ],
      ),
      );
  }
}