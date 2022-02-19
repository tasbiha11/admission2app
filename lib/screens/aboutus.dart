import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
                "LU Admission Assistance is an app to help the students in their admission process."),
            Text(">Add Reward Points"),
            Text(">Give 10% Waiver"),
            Text(">Reduce Semester Fees"),
          ],
        ),
      ),
    );
  }
}
