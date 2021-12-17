import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {
    var response = await http.get(Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Jakarta'));
    Map data = jsonDecode(response.body);
    // print(data);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    // print(datetime);
    // print(offset);

    DateTime now  = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TextButton(
            child: Text(
              'Reload',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            onPressed: getTime,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
        )
      )
    );
  }
}
