import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homePageState();
  }
}

class homePageState extends State<homePage> {
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Monstro'),
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.black,
        child: Center(
          //center provê um novo render, assims sendo possível desenhar 2 quadrados na tela
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            cont++;
          });
        },
      ),
    );
  }
}
