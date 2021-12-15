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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Hello'),
              Text('World'),
            ],
          ),
          Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.cyan,
              child: Text('one')
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('two'),
                ),
              ),
            ],
          ),
          Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.green,
              child: Text('three')
          ),
        ],
      ),
      // body: Row (
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[
      //     Text('Hello World!'),
      //     Text('제이슨'),
      //     TextButton(
      //         onPressed: null,
      //         style: ButtonStyle(
      //           foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      //           backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
      //         ),
      //         child: Text('click me!')
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(10.0),
      //       child: Text('inside container'),
      //     )
      //   ],
      // ),
      // body: Center(
      //   child: Container (
      //     padding: EdgeInsets.all(20.0),
      //     margin: EdgeInsets.all(20.0),
      //     // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
      //     // padding: EdgeInsets.fromLTRB(100.0, 200.0, 30.0, 40.0),
      //     color: Colors.grey[400],
      //     // child: Text('Hello'),
      //     child: Padding(
      //       padding: EdgeInsets.all(90.0),
      //       child: Text('Hello')
      //     ),
      //     alignment: Alignment.topLeft,
      //   ),
      // child: IconButton(
      //   onPressed: () {
      //     print('clicked');
      //   },
      //   icon: Icon(Icons.alternate_email),
      //   color: Colors.lightBlueAccent
      // )
      // child: RaisedButton.icon(
      //   onPressed: () {
      //     print('You clicked me!');
      //   },
      //   icon: Icon(
      //     Icons.mail
      //   ),
      //   label: Text('Mail me'),
      //   color: Colors.amber,
      // )
      // child: Icon(
      //   Icons.flight,
      //   color: Colors.red[800],
      //   size: 100.0
      // ),
      // child: Image.asset('assets/img/space-1.jpg'),
      // child: Image.network('https://images.unsplash.com/photo-1454789548928-9efd52dc4031'),
      // child: Image(
      // image: NetworkImage('https://images.unsplash.com/photo-1454789548928-9efd52dc4031'),
      // image: AssetImage('assets/img/space-3.jpg'),
      // ),
      // child: Text(
      //   'Hello World!',
      //   style: TextStyle(
      //     fontSize: 30.0,
      //     fontWeight: FontWeight.bold,
      //     letterSpacing: 2.0,
      //     color: Colors.grey[600],
      //     fontFamily: 'IndieFlower'
      //   )
      // ),
      // ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Text('click!'),
          backgroundColor: Colors.red[800]
      ),
    );
  }
}