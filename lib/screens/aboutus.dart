import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:admission2app/screens/confirmedadmission.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            // width: 400,
            child: Image.asset(
              "images/campus.png",
              //width: 248,
              height: 80,
            ),
            //color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: 320,
            //color: Colors.black,
            child: Column(
              children: [
                Text(
                    "The motivation behind developing this app was the struggles of students we had to face every four months in front of the account section and the bank."),
                Text(""),
              ],
            ),
          ),
          // SizedBox(
          //   height: 27,
          // ),
          // Container(
          //   //margin: EdgeInsets.symmetric(horizontal: 5),
          //   height: 125,
          //   width: double.infinity,
          //   color: Colors.blueGrey,
          //   child: Column(
          //     //crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       // Text(
          //       //   "Contact Us",
          //       //   style: TextStyle(
          //       //       color: Colors.white,
          //       //       fontWeight: FontWeight.bold,
          //       //       fontSize: 20),
          //       // ),
          //       // Text(
          //       //   "Ragibnagar, South Surma, Sylhet-3112",
          //       //   style: TextStyle(
          //       //       color: Colors.white,
          //       //       fontWeight: FontWeight.bold,
          //       //       fontSize: 15),
          //       // ),
          //       // Text(
          //       //   "Phone: 01313084499",
          //       //   style: TextStyle(
          //       //       color: Colors.white,
          //       //       fontWeight: FontWeight.bold,
          //       //       fontSize: 15),
          //       // ),
          //       // Text(
          //       //   "Email: info@lus.ac.bd",
          //       //   style: TextStyle(
          //       //       color: Colors.white,
          //       //       fontWeight: FontWeight.bold,
          //       //       fontSize: 15),
          //       // ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
