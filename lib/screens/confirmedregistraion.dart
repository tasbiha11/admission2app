import 'package:admission2app/screens/rewardpoints.dart';
import 'package:flutter/material.dart';

class ConfirmedRegistration extends StatefulWidget {
  const ConfirmedRegistration({Key? key}) : super(key: key);

  @override
  _ConfirmedRegistrationState createState() => _ConfirmedRegistrationState();
}

class _ConfirmedRegistrationState extends State<ConfirmedRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Confirmation"),
      ),
      body: Container(
          alignment: Alignment.center,
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
                "Congratulations !",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Your Semester Registration ",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "is under approval ",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              // Container(
              //   padding: EdgeInsets.all(15),
              //   child: Text("10 Points Added To Your Profile",
              //       style: TextStyle(
              //           color: Colors.white, fontWeight: FontWeight.bold)),
              //   height: 50,
              //   width: 235,
              //   color: Colors.green,
              // ),
              // Text(
              //   "  10 Points Added To Your Profile !  ",
              //   style: TextStyle(
              //       fontSize: 20,
              //       backgroundColor: Colors.green,
              //       color: Colors.white,
              //       fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Text(
              //   "Tap to view",
              //   style: TextStyle(fontSize: 20),
              // ),

              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => RewardPoints()));
              //     },
              //     child: Text(" Reward Points"))
            ],
          )),
    );
  }
}
