import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  MyTextFormField({required this.controller, required this.title});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // obscureText: true,
      decoration: InputDecoration(
          fillColor: Colors.blueGrey[100],
          filled: true,
          hintText: title,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          )),
    );
  }
}
