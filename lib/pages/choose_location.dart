import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

void getData() async{
  // Simulate Network request from db
  String username = await Future.delayed(Duration(seconds: 3), (){
    return  'Yeah I did';
  });

  // Wait to get bio of username
  String bio = await Future.delayed(Duration(seconds: 2), (){
    return 'SO i guess you are back huh';
  });
  
  print('$username - $bio');
}


  @override
  void initState() {
    super.initState();
    getData();
    print('hello there');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text('Choose location Screen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: (){
          setState((){
        });
        },
        child: null,
        ),
    );
  }
}