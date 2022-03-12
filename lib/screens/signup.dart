import 'package:admission2app/screens/homepage.dart';
import 'package:admission2app/screens/login.dart';
import 'package:admission2app/widgets/haveaccount.dart';
import 'package:admission2app/widgets/mybutton.dart';
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
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );

      if (userCredential.user != null) {
        await FirebaseFirestore.instance
            .collection("UserData")
            .doc(userCredential.user!.uid)
            .set({
          "UserName": name.text,
          "UserEmail": email.text,
          "UserID": userCredential.user!.uid,
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
        print(message);
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
            .showSnackBar(SnackBar(content: Text("All Fields Required")));
      } else if (email.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("All Fields Required")));
      } else if (name.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("All Fields Required")));
      } else if (hsc.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("All Fields Required")));
      } else if (phone.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("All Fields Required")));
      } else if (password.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("All Fields Required")));
      } else {
        submit();
      }
    });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffold,
      resizeToAvoidBottomInset: true,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        children: [
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 10,
                ),
                TopTitle(
                    title: "SignUp", subTitle: "For LU Admission Assistance"),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    MyTextFormField(
                      controller: name,
                      title: "Name",
                      validator: (value) {
                        if (value == null ||
                            !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                          return 'Please enter a valid name';
                        } else if (value.length < 2) {
                          return 'Enter Full Name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    MyTextFormField(
                      controller: email,
                      title: "Email",
                      type: TextInputType.emailAddress,
                      validator: (value) {
                        String pattern =
                            r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                            r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                            r"{0,253}[a-zA-Z0-9])?)*$";
                        RegExp regex = RegExp(pattern);
                        if (value == null ||
                            value.isEmpty ||
                            !regex.hasMatch(value)) {
                          return 'Please Enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    MyTextFormField(
                      controller: phone,
                      title: "Phone",
                      type: TextInputType.phone,
                      validator: (value) {
                        if (value == null ||
                            !RegExp(r'[0-9]').hasMatch(value)) {
                          return 'Please enter phone number';
                        } else if (value.length != 11) {
                          return 'Phone should be 11 digits';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    MyTextFormField(
                      controller: hsc,
                      title: "HSC",
                      validator: (value) {
                        if (value == null ||
                            !RegExp(r'[0-9]').hasMatch(value)) {
                          return 'Please enter name';
                        } else if (value.length > 4) {
                          return 'Enter valid year';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    MyTextFormField(
                      controller: password,
                      title: "Password",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        } else if (value.length < 2) {
                          return 'Password should be at least 8 characters long';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                isLoading == false
                    ? MyButton(
                        name: "Sign Up",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            validation(context);
                          }
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
          ),
        ],
      ),
    );
  }
}
