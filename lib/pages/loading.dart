import 'package:flutter/material.dart';
import 'package:hello_timezone/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // String time = 'loading...';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Jakarta', flag: 'assets/img/jakarta.png', url: 'Asia/Jakarta');
    await instance.getTime();

    // print(instance.time);
    // setState(() {
    //   time = instance.time;
    // });

    // Navigator.pushNamed(context, '/home');
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitThreeBounce(
          color: Colors.white,
          size: 50.0,
        ),
      )
    );
  }
}
