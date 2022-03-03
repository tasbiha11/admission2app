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
            margin: EdgeInsets.all(15),
            height: 380,
            //color: Colors.black,
            child: Column(
              children: [
                Icon(Icons.check_box, color: Colors.green),
                Text(
                  "The motivation behind developing this app was the struggles of students who had to face every four months in front of the account section and the bank.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(""),
                Icon(Icons.check_box, color: Colors.green),
                Text(
                    "We will also add a function of auto generation of confirmation mail about the stages of semester registration",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text(""),
                Icon(Icons.check_box, color: Colors.green),
                Text(
                    "Our future works including transaction through Bkash,SSLZ commerce and online banking will bring a revolution to the admission process of our university",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(height: 50),
                Center(
                  child: InkWell(
                    child: Text(
                      " Click to Visit Our Official Website",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                    onTap: () => launch('https://www.lus.ac.bd/'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.copyright_rounded),
                    Text(
                      "LU Admission Assistant",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
