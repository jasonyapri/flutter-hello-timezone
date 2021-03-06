import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App!'),
        centerTitle: true,
        backgroundColor: Colors.red[800],
      ),
      body: Row(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Image.asset('assets/img/space-2.jpg')
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: Text('1'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.pinkAccent,
                child: Text('2'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.amber,
                child: Text('3'),
              ),
            ),
          ]
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Text('click!'),
          backgroundColor: Colors.red[800]
      ),
    );
  }
}