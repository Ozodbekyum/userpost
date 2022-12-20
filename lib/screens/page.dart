import 'package:flutter/material.dart';
import 'package:userpost/service/postservice.dart';
import 'package:userpost/widgets/openpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: FutureBuilder(
            // initialData: 'Initial Data',
            future: post(),
            builder: (context, snapshot) {
              // Print the state of the snapshot
              // print(snapshot.connectionState);

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasData) {
                // return Center(child: Text(snapshot.data.toString()));
                return UserPost(post: snapshot.data!);
              } else if (snapshot.hasError) {
                return const Text('Error');
              }
              return const Text('Home Screen');
            }),
      ),
    );
  }
}
