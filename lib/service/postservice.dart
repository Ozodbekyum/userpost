import 'package:http/http.dart' as http;
import 'dart:convert';

Future post() async {
  Uri url = Uri(
    scheme: 'https',
    host: 'jsonplaceholder.typicode.com',
    path: '/posts',
  );
  http.Response response = await http.get(url);
  List postdata = json.decode(response.body);

  return postdata;
}
