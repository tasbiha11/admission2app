import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final Function onPressed;
  MyButton({required this.name, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      height: 40,
      width: 90,
      child: ElevatedButton(
        child: Text(
          name,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        onPressed: onPressed(),
      ),
    );
  }
}
