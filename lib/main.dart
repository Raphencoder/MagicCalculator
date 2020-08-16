import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
   Home({Key key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}
class HomeState extends State<Home> {
  String display = '0';
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Magic Calculator'),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
    body: Column(
        children: <Widget> [
          Text(display),
          Row(
          children: <Widget> [
            FlatButton(onPressed: () => setState(() => display = ''), child: Text('C')),
            FlatButton(onPressed: () => setState(() => display = '+/-'), child: Text('+/-')),
            FlatButton(onPressed: () => setState(() => display = '%'), child: Text('%')),
            FlatButton(onPressed: () => setState(() => display += ' / '), child: Text('/')),
          ]
        ),
          Row(
          children: <Widget> [
            FlatButton(onPressed: () => setState(() => display += '7'), child: Text('7')),
            FlatButton(onPressed: () => setState(() => display += '8'), child: Text('8')),
            FlatButton(onPressed: () => setState(() => display += '9'), child: Text('9')),
            FlatButton(onPressed: () => setState(() => display += ' x '), child: Text('X')),
            ]
          ),
          Row(
            children: <Widget> [
              FlatButton(onPressed: () => setState(() => display += '4'), child: Text('4')),
              FlatButton(onPressed: () => setState(() => display += '5'), child: Text('5')),
              FlatButton(onPressed: () => setState(() => display += '6'), child: Text('6')),
              FlatButton(onPressed: () => setState(() => display += ' - '), child: Text('-')),
            ]
          ),  
          Row(
            children: <Widget> [
              FlatButton(onPressed: () => setState(() => display += '1'), child: Text('1')),
              FlatButton(onPressed: () => setState(() => display += '2'), child: Text('2')),
              FlatButton(onPressed: () => setState(() => display += '3'), child: Text('3')),
              FlatButton(onPressed: () => setState(() => display += ' + '), child: Text('+')),
            ]
          ),
          Row(
            children: <Widget> [
              FlatButton(onPressed: () => setState(() => display += '0'), child: Text('0')),
              FlatButton(onPressed: () => setState(() => display = '.'), child: Text('.')),
              FlatButton(onPressed: () => setState(() => display = '626066626'), child: Text('=')),
            ]
          )
        ]
      )
    );
  }
}
