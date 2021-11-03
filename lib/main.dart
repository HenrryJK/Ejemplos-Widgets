import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo 01',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Expanded'),
          ),
          //   body: Cuadradito(Colors.red)),
          body: Row(
            children: <Widget>[
              Cuadradito(Colors.red),
              Expanded(flex: 3, child: Cuadradito(Colors.green)),
              Expanded(flex: 2, child: Cuadradito(Colors.green)),
              Cuadradito(Colors.red),
            ],
          )),
    );
  }
}

class Cuadradito extends StatelessWidget {
  final Color color;
  Cuadradito(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(color: this.color),
    );
  }
}
