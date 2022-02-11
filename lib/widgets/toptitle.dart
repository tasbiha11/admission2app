import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  final String title, subTitle;
  TopTitle({required this.title, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 400,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      color: Colors.blueGrey,
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              //fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
