import 'dart:ui';

import 'package:flutter/material.dart';

class RewardPoints extends StatefulWidget {
  @override
  _RewardPointsState createState() => _RewardPointsState();
}

class _RewardPointsState extends State<RewardPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reward Points"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "images/Leading_University_Logo.png",
              width: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "  Total Reward Points: 10  ",
              style: TextStyle(
                  fontSize: 30,
                  backgroundColor: Colors.green,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 290,
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    leading: Icon(Icons.arrow_forward_ios_outlined),
                    title: Text(
                      'With Every Semester Registration Through this App you get 10 points added to your profile',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward_ios_outlined),
                    title: Text(
                      'A 100 point in your profile can result in reduction of Tk.1000 in your next semester fees',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward_ios_outlined),
                    title: Text(
                      'You can also collect reward points by becoming a refferer to a new student during admission',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward_ios_outlined),
                    title: Text(
                      'A refferer gets 30 reward points added to their profile',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
