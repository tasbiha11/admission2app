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
        child: Text(
          "  Total Reward Points: 10  ",
          style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.green,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
