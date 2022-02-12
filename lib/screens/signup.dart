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
  //final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController name = TextEditingController();
  final TextEditingController idnumber = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController hsc = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  bool isLoading = false;
  late UserCredential authResult;
  void submit() async {
    setState(() {
      isLoading = true;
    });
    try {
      authResult = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
    } on PlatformException catch (e) {
      String message = "Check Internet Connection";
      if (e.message != null) {
        message = e.message.toString();
      }
      scaffold.currentState!.showSnackBar(
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
      scaffold.currentState!.showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
    await FirebaseFirestore.instance
        .collection("UserData")
        .doc(authResult.user!.uid)
        .set({
      "UserName": name.text,
      "UserEmail": email.text,
      "UserID": authResult.user!.uid,
      "UserIDnumber": idnumber.text,
      "UserPhone": phone.text,
      "UserHSC": hsc.text,
    });
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => HomePage(),
      ),
    );
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffold,
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TopTitle(title: "SignUp", subTitle: "For LU Admission Assistance"),
            Container(
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyTextFormField(controller: name, title: "Name"),
                  MyTextFormField(controller: idnumber, title: "ID"),
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
                      validation();
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(color: Colors.blueGrey),
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
                title: "Already have ane Account")
          ],
        ),
      ),
    );
  }

  void validation() {}
}
