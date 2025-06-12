import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  
void getTime() async{
//  Make a request
 Uri url = Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=Europe/Amsterdam');
  Response response = await get(url);
  Map data = jsonDecode(response.body);

  // Get properties from data
  String datetime = data['dateTime'];
  String time = data['time'];
  // print('$datetime, $time');

  // Datetime object
  DateTime now = DateTime.parse(datetime);
  print(now);
}


  @override
  void initState() {
    super.initState();
    getTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen.....'),
    );
  }
}