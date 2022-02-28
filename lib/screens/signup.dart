import 'package:admission2app/screens/homepage.dart';
import 'package:admission2app/screens/login.dart';
import 'package:admission2app/widgets/haveaccount.dart';
import 'package:admission2app/widgets/mybutton.dart';
import 'package:admission2app/widgets/mypasswordtextformfield.dart';
import 'package:admission2app/widgets/mytextformfield.dart';
import 'package:admission2app/widgets/toptitle.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController name = TextEditingController();
  //final TextEditingController idnumber = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController hsc = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  static String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static RegExp regExp = new RegExp(p);
  bool isLoading = false;

  void submit() async {
    setState(() {
      isLoading = true;
    });
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.text, password: password.text);
      if (userCredential.user != null) {
        await FirebaseFirestore.instance
            .collection("UserData")
            .doc(userCredential.user!.uid)
            .set({
          "UserName": name.text,
          "UserEmail": email.text,
          "UserID": userCredential.user!.uid,
          //"UserIDnumber": idnumber.text,
          "UserPhone": phone.text,
          "UserHSC": hsc.text,
        });
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (ctx) => HomePage(),
          ),
        );
      }
    } on PlatformException catch (e) {
      String message = "Check Internet Connection";
      if (e.message != null) {
        message = e.message.toString();
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  void validation(context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (email.text.isEmpty && password.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("All Field Required")));
      } else if (email.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Email is Required")));
      } else if (password.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Password is Required")));
      } else {
        submit();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffold,
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TopTitle(
                    title: "SignUp", subTitle: "For LU Admission Assistance"),
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyTextFormField(controller: name, title: "Name"),
                      //MyTextFormField(controller: idnumber, title: "ID"),
                      MyTextFormField(controller: email, title: "Email"),
                      MyTextFormField(controller: phone, title: "Phone"),
                      MyTextFormField(controller: hsc, title: "HSC"),
                      MyPasswordTextFormField(
                          controller: password, title: "Password"),
                    ],
                  ),
                ),
                isLoading == false
                    ? MyButton(
                        name: "Sign Up",
                        onPressed: () {
                          validation(context);
                        },
                      )
                    : Center(
                        child:
                            CircularProgressIndicator(color: Colors.blueGrey),
                      ),
                SizedBox(
                  height: 10,
                ),
                HaveAccount(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (ctx) => Login(),
                        ),
                      );
                    },
                    subtitle: " Login",
                    title: "Already have an Account")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
