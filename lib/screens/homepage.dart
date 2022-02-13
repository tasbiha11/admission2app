import 'package:admission2app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => Login(),
                  ),
                );
              },
              icon: Icon(Icons.exit_to_app_rounded))
        ],
        title: Text("Home"),
      ),
    );
  }
}
