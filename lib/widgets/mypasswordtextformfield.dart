import "package:flutter/material.dart";

class MyPasswordTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String title;
  MyPasswordTextFormField({required this.controller, required this.title});

  @override
  State<MyPasswordTextFormField> createState() =>
      _MyPasswordTextFormFieldState();
}

class _MyPasswordTextFormFieldState extends State<MyPasswordTextFormField> {
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obsecureText = !obsecureText;
              });
            },
            child: Icon(
              obsecureText == true ? Icons.visibility : Icons.visibility_off,
            ),
          ),
          fillColor: Colors.blueGrey[100],
          filled: true,
          hintText: widget.title,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          )),
    );
  }
}
