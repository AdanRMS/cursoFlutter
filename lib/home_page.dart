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
      body: Center(
        child: GestureDetector(
          child: Text(
            'Contador $cont',
            style: TextStyle(fontSize: 60.0),
          ),
          onTap: () {
            setState(() {
              cont--;
            });
          },
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
