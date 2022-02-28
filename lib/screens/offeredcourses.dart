import 'package:flutter/material.dart';

class OfferedCourses extends StatefulWidget {
  const OfferedCourses({Key? key}) : super(key: key);

  @override
  _OfferedCoursesState createState() => _OfferedCoursesState();
}

class _OfferedCoursesState extends State<OfferedCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Offered Courses")),
      body: Container(),
    );
  }
}
