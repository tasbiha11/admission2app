import 'package:admission2app/screens/confirmedregistraion.dart';
import 'package:flutter/material.dart';

class SemesterRegistration extends StatelessWidget {
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
              SizedBox(
                height: 10,
              ),
              Text(
                "Fill the Form for Semester Registration",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
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
              SizedBox(
                height: 10,
              ),
              TextFormField(
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
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: "Semester",
                  labelStyle: TextStyle(color: Colors.blueGrey),
                  filled: true,
                  fillColor: Colors.blueGrey[100],
                ),
              ),

              // DropdownButton<String>(
              //   value: selectedItem,
              //   icon: const Icon(Icons.arrow_downward_outlined),
              //   elevation: 16,
              //   style: const TextStyle(color: Colors.blueGrey, fontSize: 20),
              //   underline: Container(
              //     height: 2,
              //     color: Colors.blueGrey,
              //   ),
              //   onChanged: (String? newValue) {
              //     setState(() {
              //       selectedItem = newValue!;
              //     });
              //   },
              //   items: <String>[
              //     '1st Semester',
              //     '2nd Semester',
              //     '3rd Semester',
              //     '4th Semester',
              //     '5th Semester',
              //     '6th Semester',
              //     '7ht Semester',
              //     '8th Semester',
              //   ].map<DropdownMenuItem<String>>((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child: Text(value),
              //     );
              //   }).toList(),
              // ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
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
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: "Reference No.",
                  labelStyle: TextStyle(color: Colors.blueGrey),
                  filled: true,
                  fillColor: Colors.blueGrey[100],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConfirmedRegistration()));
                },
                child: Text("Register"),
              )
            ],
          ),
        )),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
