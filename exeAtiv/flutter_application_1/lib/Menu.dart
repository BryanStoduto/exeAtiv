import 'package:flutter/material.dart';
import 'package:flutter_application_1/produto.dart';
import 'package:flutter_application_1/sobre.dart';
import 'empresa.dart';
import 'home.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('El Mejor Café Del Estado'),
        backgroundColor: Colors.brown,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("El Café"),
              decoration: BoxDecoration(
                color: Colors.brown,
                image: DecorationImage(
                  image: AssetImage("imagem/logocafe3.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Menu Home",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              tileColor: Colors.white,
              title: Text("Menu empresa"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Empresa()));
              },
            ),
            ListTile(
              tileColor: Colors.white,
              title: Text("Menu Sobre"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Sobre()));
              },
            ),
            Divider(),
            ListTile(
              tileColor: Colors.white,
              title: Text("Menu Produto"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Produto()));
              },
            ),
            Divider(),
            ListTile(
              title: Text(" Sair"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Nem laranjas, nem café: Apenas canaviais Sob um céu vazio.   Paulo Franchetti"),
      ),
    );
  }
}