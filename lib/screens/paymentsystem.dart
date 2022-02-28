import 'package:flutter/material.dart';

class PaymentProcess extends StatefulWidget {
  const PaymentProcess({Key? key}) : super(key: key);

  @override
  _PaymentProcessState createState() => _PaymentProcessState();
}

class _PaymentProcessState extends State<PaymentProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Guideline"),
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset("images/payment2.png"),
            Image.asset("images/payment1.png"),
            Image.asset("images/payment3.png"),
          ],
        ),
      ),
    );
  }
}
