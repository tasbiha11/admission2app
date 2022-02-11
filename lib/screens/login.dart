import 'package:admission2app/screens/signup.dart';
import 'package:admission2app/widgets/haveaccount.dart';
import 'package:admission2app/widgets/mybutton.dart';
import 'package:admission2app/widgets/mypasswordtextformfield.dart';
import 'package:admission2app/widgets/mytextformfield.dart';
import 'package:admission2app/widgets/toptitle.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  TextEditingController email = TextEditingController();
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  void validation(context) {
    if (email.text.isEmpty && password.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Both Field Required")));
    } else if (email.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Email is Required")));
    } else if (password.text.isEmpty) {
      ScaffoldMessenger.of(context);
      // .showSnackBar(SnackBar(content: Text("Password is Required")));
    }
  }

  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // key: scaffold,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "images/Leading_University_Logo.png",
                  height: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                TopTitle(
                    title: "Welcome To", subTitle: "LU Admission Assistance"),
                Center(
                  child: Container(
                    height: 200,
                    width: 380,
                    // color: Colors.amberAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyTextFormField(
                          title: "Email",
                          controller: email,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MyPasswordTextFormField(
                            title: "Password", controller: password),
                      ],
                    ),
                  ),
                ),
                MyButton(
                  name: "Login",
                  onPressed: () {
                    //validation(context);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                HaveAccount(
                  title: "Create an account ?",
                  subtitle: " SignUp",
                  // onTap: () {
                  //   Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(
                  //       builder: (ctx) => SignUp(),
                  //     ),
                  //   );
                  // },
                ),
              ],
            ),
          ),
        ));
  }
}
