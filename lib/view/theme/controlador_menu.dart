// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:openunifeobmobile/view/pages/content/body_conta.dart';
import 'package:openunifeobmobile/view/pages/content/body_enviar.dart';
import 'package:openunifeobmobile/view/pages/content/body_home.dart'; 
import 'package:openunifeobmobile/view/pages/content/body_aprendizado.dart'; 

class ControladorMenu extends StatefulWidget {
  const ControladorMenu({Key? key}) : super(key: key);

  @override
  _ControladorMenuState createState() => _ControladorMenuState();
}

class _ControladorMenuState extends State<ControladorMenu> {

int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
  static const List<Widget> _widgetOptions = <Widget>[
    BodyHome(),
    BodyAprendizado(),
    BodyEnviar(),
    BodyConta(), 
  ];

 void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A3446),
      body: Container(
        padding: EdgeInsets.only(top: 40),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber[600], 
        type: BottomNavigationBarType.fixed, //Ter mais 3 itens na Navigation Bar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Aprendizado',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload),
            label: 'Enviar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Conta',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}