import 'package:flutter/material.dart';

class AdmissionConfirmation extends StatefulWidget {
  @override
  _AdmissionConfirmationState createState() => _AdmissionConfirmationState();
}

class _AdmissionConfirmationState extends State<AdmissionConfirmation> {
  @override
  Widget build(BuildContext context) {
    var data = "";
    return Scaffold(
      appBar: AppBar(
        title: Text("Admission Confirmation"),
      ),
      body: Container(
        alignment: Alignment.center,
        //padding: EdgeInsets.only(top: 250),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              "images/Leading_University_Logo.png",
              width: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "  Your Admisson Form is Under Process  ",
              style: TextStyle(
                  fontSize: 20,
                  backgroundColor: Colors.green,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " You will get 10% waiver upon admission after approval ",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
