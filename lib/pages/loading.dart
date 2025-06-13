import 'package:flutter/material.dart';
import 'package:weather_app_5/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

void setupWorldTime() async{
  WorldTime instance = WorldTime(location: 'Amsterdam', flag: 'Amsterdam.jpeg', url: 'Europe/Amsterdam');
  await instance.getTime();
  Navigator.pushReplacementNamed(context, '/home', arguments: { // <-- Used to navigate to next page
    'location':instance.location,
    'flag':instance.flag,
    'time':instance.time,
    'dayornight': instance.dayornight,
  });
}
  @override
  void initState() {
    super.initState();
    setupWorldTime(); //<-- Get the function from above
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCubeGrid( //<--- This is a new pacckage for loading screen
              color: Colors.white,
              size: 50.0,
            ),
      ),
    );
  }
}