import 'package:admission2app/screens/confirmedregistraion.dart';
import 'package:admission2app/screens/offeredcourses.dart';
import 'package:admission2app/services/firebase_services.dart';
import 'package:flutter/material.dart';

class SemesterRegistration extends StatefulWidget {
  @override
  State<SemesterRegistration> createState() => _SemesterRegistrationState();
}

class _SemesterRegistrationState extends State<SemesterRegistration> {
  List<String> items = [
    '1st semester',
    '2nd semester',
    '3rd semester',
    '4th semester',
    '5th semester',
    '6th semester',
    '7th semester',
    '8th semester'
  ];

  String? selectedItem = '1st Semester';

  final _firebaseServices = FirebaseServices();

  final _referenceController = TextEditingController();
  final _programNameController = TextEditingController();
  final _studentIdController = TextEditingController();
  final _sectionController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose

    _referenceController.dispose();
    _programNameController.dispose();
    _studentIdController.dispose();
    _sectionController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Semester Registration")),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Form(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "images/Leading_University_Logo.png",
                width: 150,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _referenceController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: "Reference ID",
                  labelStyle: TextStyle(color: Colors.blueGrey),
                  filled: true,
                  fillColor: Colors.blueGrey[100],
                ),
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
                  labelStyle: TextStyle(color: Colors.blueGrey),
                  filled: true,
                  fillColor: Colors.blueGrey[100],
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextFormField(
              //   controller: _referenceController,
              //   decoration: InputDecoration(
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(color: Colors.blueGrey),
              //       borderRadius: BorderRadius.circular(5),
              //     ),
              //     labelText: "Reference No.",
              //     labelStyle: TextStyle(color: Colors.blueGrey),
              //     filled: true,
              //     fillColor: Colors.blueGrey[100],
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: _studentIdController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: "Student ID",
                  labelStyle: TextStyle(color: Colors.blueGrey),
                  filled: true,
                  fillColor: Colors.blueGrey[100],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _sectionController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: "Section",
                  labelStyle: TextStyle(color: Colors.blueGrey),
                  filled: true,
                  fillColor: Colors.blueGrey[100],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                width: double.infinity,
                color: Colors.blueGrey[100],
                child: Center(
                  child: DropdownButton(
                    value: selectedItem,
                    onChanged: (String? value) {
                      setState(() {
                        selectedItem = value;
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "1st Semester",
                        ),
                        value: "1st Semester",
                      ),
                      DropdownMenuItem(
                        child: Text("2nd Semester"),
                        value: "2nd Semester",
                      ),
                      DropdownMenuItem(
                        child: Text("3rd Semester"),
                        value: "3rd Semester",
                      ),
                      DropdownMenuItem(
                        child: Text("4th Semester"),
                        value: "4th Semester",
                      ),
                      DropdownMenuItem(
                        child: Text("5th Semester"),
                        value: "5th Semester",
                      ),
                      DropdownMenuItem(
                        child: Text("6th Semester"),
                        value: "6th Semester",
                      ),
                      DropdownMenuItem(
                        child: Text("7th Semester"),
                        value: "7th Semester",
                      ),
                      DropdownMenuItem(
                        child: Text("8th Semester"),
                        value: "8th Semester",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OfferedCourses()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 0),
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  child: Text(" View Offered Courses")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _firebaseServices
                      .addSemisterRegistration(
                    referenceNo: _referenceController.text,
                    programName: _programNameController.text,
                    studentId: _studentIdController.text,
                    semister: selectedItem!,
                    section: _sectionController.text,
                  )
                      .then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmedRegistration()));
                  });
                },
                child: Text("Register"),
              )
            ],
          ),
        )),
      ),
    );
  }
}
