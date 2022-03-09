import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection('UserData')
            .doc(FirebaseAuth.instance.currentUser?.uid)
            .get(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          print(FirebaseAuth.instance.currentUser?.uid);
          if (snapshot.hasData) {
            return Center(
              child: Container(
                //color: Colors.blueGrey,
                //height: 300,
                //margin: EdgeInsets.all(35),
                child: Container(
                  margin: EdgeInsets.all(25),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/verified_user.png",
                        width: 130,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       child: Icon(
                      //         Icons.account_box_outlined,
                      //         size: 55,
                      //       ),
                      //     ),
                      // //   ],
                      // ),
                      Row(
                        children: [
                          Text(
                            "Name:  ",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            snapshot.data.get('UserName'),
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Email: ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            snapshot.data.get('UserEmail'),
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "HSC Year:  ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            snapshot.data.get('UserHSC'),
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Phone: ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            snapshot.data.get('UserPhone'),
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return Column(children: [
            Text('no data'),
          ]);
        },
      ),
    );
  }
}
