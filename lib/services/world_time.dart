import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location; //location name for ui
  String? time ; //time in that location
  String flag; //url to asset flag icon
  String url; //  location url for api endpoint

  WorldTime({required this.location,required this.flag,required this.url });

  Future<void> getTime() async{
//  Make a request
  Uri uri = Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=$url');

    // and now pass that Uri to get()
    Response response = await get(uri);
    Map data = jsonDecode(response.body);

  // Get properties from data
  String datetime = data['dateTime'];
  time = DateTime.parse(datetime).toString();
  // print('$datetime, $time');
  print(time);
}


}

// WorldTime instance = WorldTime(location: 'Amsterdam', flag: 'Amsterdam.jpeg', url: 'Europe/Amsterdam');