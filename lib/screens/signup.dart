import 'package:admission2app/screens/login.dart';
import 'package:admission2app/widgets/haveaccount.dart';
import 'package:admission2app/widgets/mybutton.dart';
import 'package:admission2app/widgets/mypasswordtextformfield.dart';
import 'package:admission2app/widgets/mytextformfield.dart';
import 'package:admission2app/widgets/toptitle.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: scaffold,
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
            MyButton(name: "Sign Up", onPressed: () {}),
            SizedBox(
              height: 10,
            ),
            HaveAccount(
                // onTap: () {
                //   Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(
                //       builder: (ctx) => Login(),
                //     ),
                //   );
                // },
                subtitle: " Login",
                title: "Already have ane Account")
          ],
        ),
      ),
    );
  }
}
