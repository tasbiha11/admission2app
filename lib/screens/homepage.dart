import 'package:admission2app/screens/aboutus.dart';
import 'package:admission2app/screens/admissionpage.dart';
import 'package:admission2app/screens/login.dart';
import 'package:admission2app/screens/paymentsystem.dart';
import 'package:admission2app/screens/rewardpoints.dart';
import 'package:admission2app/screens/semester_registration_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget _buildSingleCategory({String? image}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        height: 180,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 180,
              width: 240,
              child: Column(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/$image.png"),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LU Admission Assistance"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                      child: Center(
                        child: Text("User"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "User Logged In",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                leading: Icon(Icons.home, size: 32),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RewardPoints()));
                },
                leading: Icon(Icons.confirmation_number, size: 32),
                title: Text(
                  "Reward Points",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentProcess()));
                },
                leading: Icon(Icons.payment_outlined, size: 32),
                title: Text(
                  "Payment Guideline",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUs()));
                },
                leading: Icon(Icons.info, size: 32),
                title: Text(
                  "About Us",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                leading: Icon(Icons.logout, size: 32),
                title: Text(
                  "Log Out",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              height: 100,
                              child: Row(
                                children: [
                                  // CircleAvatar(
                                  //   maxRadius: 30,
                                  //   backgroundImage:
                                  //       AssetImage("images/verified_user.png"),
                                  // ),
                                  // SizedBox(
                                  //   height: 5,
                                  // ),
                                  Image.asset(
                                    "images/Leading_University_Logo.png",
                                    width: 80,
                                  ),
                                  Container(
                                    // padding: EdgeInsets.symmetric(
                                    //     vertical: 10),
                                    // padding: EdgeInsets.all(10),
                                    height: 50,
                                    width: 200,
                                    //color: Colors.black,
                                    child: ListTile(
                                      title: Text(
                                        "Leading University",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  height: 200,
                                  child: Row(
                                    children: [
                                      _buildSingleCategory(
                                        image: "campus",
                                      ),
                                      _buildSingleCategory(
                                        image: "campus1",
                                      ),
                                      _buildSingleCategory(
                                        image: "campus2",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Container(
                            height: 200,
                            //color: Colors.black,
                            child: Column(
                              children: [
                                Container(
                                  height: 240,
                                  child: GridView(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AdmissionPage()));
                                        },
                                        child: Container(
                                          color: Colors.blueGrey,
                                          child: Column(
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 20)),
                                              Icon(
                                                Icons.school,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Admission",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SemesterRegistration()));
                                        },
                                        child: Container(
                                          color: Colors.blueGrey,
                                          child: Column(
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 20)),
                                              Icon(
                                                Icons.app_registration_outlined,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Semester",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "Registration",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.blueGrey,
                  height: 60,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "Contact Us",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Ragibnagar, South Surma, Sylhet-3112",
                        style: TextStyle(color: Colors.white),
                      ),
                      // Text(
                      //   "Phone: 01313084499.",
                      //   style: TextStyle(color: Colors.white),
                      // ),
                      Text(
                        "Email: info@lus.ac.bd",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

//Leading University
// Ragibnagar, South Surma, Sylhet-3112
// Phone: 01313084499.
// Email: info@lus.ac.bd