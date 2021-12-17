import 'package:flutter/material.dart';
import 'package:hello_timezone/services/world_time.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('loading...'),
              SizedBox(height: 10.0),
              TextButton(
                  child: Text(
                    'Reload',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: setupWorldTime,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
              ),
            ],
          ),
        )
      )
    );
  }
}
