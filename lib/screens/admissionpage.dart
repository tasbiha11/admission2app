import 'package:admission2app/screens/confirmedadmission.dart';
import 'package:admission2app/screens/confirmedregistraion.dart';
import 'package:admission2app/services/firebase_services.dart';
import 'package:flutter/material.dart';

class AdmissionPage extends StatefulWidget {
  @override
  _AdmissionPageState createState() => _AdmissionPageState();
}

class _AdmissionPageState extends State<AdmissionPage> {
  final _firebaseServices = FirebaseServices();

  final _reffererController = TextEditingController();
  final _programNameController = TextEditingController();
  final _applicantNameController = TextEditingController();
  final _fathersNameOccupationController = TextEditingController();
  final _mothersNameOccupationController = TextEditingController();
  final _addressController = TextEditingController();
  final _birthDateController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  final _nationalityController = TextEditingController();
  final _hscRegNoController = TextEditingController();
  final _hscGPAController = TextEditingController();
  final _sscGPAController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose

    _reffererController.dispose();
    _programNameController.dispose();
    _applicantNameController.dispose();
    _fathersNameOccupationController.dispose();
    _mothersNameOccupationController.dispose();
    _addressController.dispose();
    _birthDateController.dispose();
    _mobileController.dispose();
    _emailController.dispose();
    _nationalityController.dispose();
    _hscRegNoController.dispose();
    _hscGPAController.dispose();
    _sscGPAController.dispose();

    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Admission Form"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "images/Leading_University_Logo.png",
                  width: 120,
                ),
                SizedBox(
                  height: 4,
                ),
                TextFormField(
                  controller: _reffererController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Refferer ID",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value == null || !RegExp(r'[0-9]').hasMatch(value)) {
                      return 'Please enter valid ID';
                    } else if (value.length != 10) {
                      return 'ID should be 10 digits';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _programNameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Program Name",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Enter valid Program Name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _applicantNameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Applicant Name",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Enter valid name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _fathersNameOccupationController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Fathers name and Occupation",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Enter valid name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _mothersNameOccupationController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Mothers name and Occupation",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Enter valid name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Address",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Enter valid address";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _birthDateController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Date of Birth: dd/mm/yyyy",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$')
                            .hasMatch(value)) {
                      return "Enter valid Date of Birth";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _mobileController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Mobile",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value == null || !RegExp(r'[0-9]').hasMatch(value)) {
                      return 'Please enter phone number';
                    } else if (value.length != 11) {
                      return 'Phone should be 11 digits';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return "Enter valid email address";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _nationalityController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Nationality",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Enter valid name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _hscRegNoController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "HSC Registration No.",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value == null || !RegExp(r'[0-9]').hasMatch(value)) {
                      return 'Please enter registration number';
                    } else if (value.length != 12) {
                      return 'Registration number must be 11 digits';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _hscGPAController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "HSC GPA",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value == null || !RegExp(r'[0-9]').hasMatch(value)) {
                      return 'Please enter result';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _sscGPAController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "SSC GPA",
                    labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                  ),
                  validator: (value) {
                    if (value == null || !RegExp(r'[0-9]').hasMatch(value)) {
                      return 'Please enter result';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    } else {
                      return null;
                    }
                    _firebaseServices
                        .addAddmissionRegistration(
                      reffererId: _reffererController.text,
                      programName: _programNameController.text,
                      applicantName: _applicantNameController.text,
                      fathersNameOccupation:
                          _fathersNameOccupationController.text,
                      mothersNameOccupation:
                          _mothersNameOccupationController.text,
                      address: _addressController.text,
                      birthDate: _birthDateController.text,
                      mobile: _mobileController.text,
                      email: _emailController.text,
                      nationality: _nationalityController.text,
                      hscRegNo: _hscRegNoController.text,
                      hscGPA: _hscGPAController.text,
                      sscGPA: _sscGPAController.text,
                    )
                        .then((value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdmissionConfirmation()));
                    });
                  },
                  child: Text("Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
