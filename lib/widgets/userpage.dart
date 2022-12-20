import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final List userpost;
  UserPage({Key? key, required this.userpost}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: userpost.length,
          itemBuilder: ((context, int index) {
            return Column(
              children: [
                ListTile(title: Text(userpost[index]['name'].toString())),
                Divider(),
              ],
            );
          })),
    );
  }
}