import 'package:http/http.dart' as http;
import 'dart:convert';

Future userpost() async {
  Uri url = Uri(
    scheme: 'https',
    host: 'jsonplaceholder.typicode.com',
    path: '/users',
  );
  http.Response response = await http.get(url);
  List userdata = json.decode(response.body);
  
  return userdata;
}