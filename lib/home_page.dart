import 'package:flutter/material.dart';

import 'app_controller.dart';

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
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity, //Largura da coluna
        height: double.infinity, //Altura da coluna
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //alinhamento das colunas
          crossAxisAlignment:
              CrossAxisAlignment.center, //alinhamento das colunas
          children: [Text('Contador: $cont'), CustomSwitch()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              cont++;
            });
          }),
    );
  }
}

//Início da componentização de Widgets
class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
