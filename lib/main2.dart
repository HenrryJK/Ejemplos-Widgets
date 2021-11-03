import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap'),
        ),
        body: Center(
            child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 11.0,
          children: <Widget>[
            MyTags('Soccer'),
            MyTags('Basket Ball'),
            MyTags('News Papers'),
            MyTags('Cinema'),
            MyTags('Jackets'),
            MyTags('New Alejandria')
          ],
        )),
      ),
    );
  }
}

class MyTags extends StatelessWidget {
  final String texto;
  MyTags(this.texto);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text(this.texto[0]),
      ),
      label: Text(this.texto, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue,
    );
  }
}
