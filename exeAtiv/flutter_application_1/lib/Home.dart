import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.brown,
          title: Text("Flutter POPUP Menu"),
          actions: [
            PopupMenuButton(
              itemBuilder: (context)=>[
                PopupMenuItem(
                  child: Text("Avaliação"),
                  value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Segunda Avaliação"),
                    )
                  ]
                  )
          ],
        ) ,
      )
      
    );
  }
}