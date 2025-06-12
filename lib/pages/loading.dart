import 'package:flutter/material.dart';
import 'package:weather_app_5/services/world_time.dart';

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
  print(instance.time);
  setState(() {
    time = instance.time ?? 'caught an error';
  });
}
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text(time), 
      ),
    );
  }
}