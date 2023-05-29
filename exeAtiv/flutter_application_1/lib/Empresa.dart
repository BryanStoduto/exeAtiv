import 'package:flutter/material.dart';

class Empresa extends StatefulWidget {
  const Empresa({Key? key}) : super(key: key);

  @override
  _EmpresaState createState() => _EmpresaState();
}

class _EmpresaState extends State<Empresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Tela Empresa"),
      ),
      body: Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Cadastro de Cliente",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Digite seu Nome"
              ),
              style: TextStyle(
                  fontSize: 18
              ),
              //controller: _controllerUsuario,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Digite seu Endereço"
              ),
              style: TextStyle(
                  fontSize: 18
              ),
              //controller: _controllerUsuario,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Digite sua Idade"
              ),
              style: TextStyle(
                  fontSize: 18
              ),
              //controller: _controllerUsuario,
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: 
              RaisedButton(
                  color: Colors.brown,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Cadastrar Cliente",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  onPressed: (){}
              ),
            ),
          ],
        ),
       ),
      ),
    );
  }
}