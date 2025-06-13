import 'package:http/http.dart';
import 'dart:convert';
// import 'package:intl/intl.dart';

class WorldTime {

  String location; //location name for ui
  String? time ; //time in that location
  String flag; //url to asset flag icon
  String url; //  location url for api endpoint

  WorldTime({required this.location,required this.flag,required this.url });

  Future<void> getTime() async{
    try{
    Uri uri = Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=$url');
    Response response = await get(uri);
    Map data = jsonDecode(response.body);

    String datetime = data['dateTime'];
    time = DateTime.parse(datetime).toString();// to get timeonly time = data['time'].toString();
    time = data['time']; //<-- To get just the time without the date
    }
    catch(e){
      print('caught an error - $e');
      time = 'could not get time data';
    }
}
}