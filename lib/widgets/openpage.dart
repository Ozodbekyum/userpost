import 'package:flutter/material.dart';
import 'package:userpost/models/usermodel.dart';
import 'package:userpost/widgets/userpage.dart';

class UserPost extends StatelessWidget {
  final List post;
  UserPost({Key? key, required this.post}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: post.length,
          itemBuilder: ((context, int index) {
            return Column(
              children: [
                ListTile(
                    
                    title: Text(post[index]['title'].toString())),
                Divider(),
              ],
            );
          })),
    );
  }
}
