import 'package:admission2app/screens/homepage.dart';
import 'package:admission2app/screens/signup.dart';
import 'package:admission2app/widgets/haveaccount.dart';
import 'package:admission2app/widgets/mybutton.dart';
import 'package:admission2app/widgets/mypasswordtextformfield.dart';
import 'package:admission2app/widgets/mytextformfield.dart';
import 'package:admission2app/widgets/toptitle.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoading = false;

  late UserCredential authResult;

  void submit() async {
    isLoading = true;

    try {
      authResult = await FirebaseAuth.instance.signInWithEmailAndPassword(
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
      scaffold.currentState!.showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
      setState(() {
        isLoading = false;
      });
    }
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => HomePage(),
      ),
    );
    setState(() {
      isLoading = false;
    });
  }

  TextEditingController email = TextEditingController();

  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();

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
      }
    });
    submit();
  }

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        key: scaffold,
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
                    validation(context);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                HaveAccount(
                  title: "Create an account ?",
                  subtitle: " SignUp",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => SignUp(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
