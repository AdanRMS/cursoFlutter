import 'package:flutter/material.dart';

import 'app_controller.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homePageState();
  }
}

class homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Monstro'),
        actions: [CustomSwitch()],
      ),
      body: Center(child: CustomSwitch()),
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
