import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String? Function(String?) validator;
  final TextInputType type;
  MyTextFormField({
    required this.controller,
    required this.title,
    required this.validator,
    this.type = TextInputType.text,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
          fillColor: Colors.blueGrey[100],
          filled: true,
          hintText: title,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          )),
      validator: validator,
    );
  }
}
