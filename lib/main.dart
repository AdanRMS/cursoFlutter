import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(
    title: 'Fluterando',
  ));
}

// começo Stateless
class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

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
