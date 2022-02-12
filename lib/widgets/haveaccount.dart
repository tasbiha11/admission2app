import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  final String title, subtitle;
  final VoidCallback onTap;
  HaveAccount(
      {required this.onTap, required this.subtitle, required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: Text(
            subtitle,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
