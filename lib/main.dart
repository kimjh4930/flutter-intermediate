import 'package:flutter/material.dart';

import 'MyAnimatedContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo App',
        theme: ThemeData(
            primarySwatch: Colors.blue,
        ),
        home: HelloPage('Hello World')
    );
  }
}

class HelloPage extends StatefulWidget {
  final String title;
  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'Hello World';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        // onPressed: ,
      ),
      appBar: AppBar(
        title:Text(widget.title)
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(_message, style: TextStyle(fontSize: 30)),
          Text('$_counter', style: TextStyle(fontSize: 30)),
          RaisedButton(
            child: Text('화면이동'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
            },
          )
        ],
      )),
    );
  }
}
