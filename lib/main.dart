import 'package:flutter/material.dart';

main() {
  runApp(AppWidget());
}

// começo Stateless
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: homePage(),
    );
  }
}
// fim do Stateless

// começo Statefull
class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homePageState();
  }
}

class homePageState extends State<homePage> {
  var cont = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text('Contador $cont'),
          onTap: () {
            setState(() {
              cont++;
            });
          },
        ),
      ),
    );
  }
}
//fim statefull
