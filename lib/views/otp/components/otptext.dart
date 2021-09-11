import 'package:flutter/material.dart';

Container otptext() {
  return Container(
    child: Column(
      children: [
        Text(
          'We have send an OTP to',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'your mobile',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Please check your mobile number 017*****32',
          style: TextStyle(
            fontSize: 13,
            color: Colors.black38,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'continue to reset your password ',
          style: TextStyle(
            fontSize: 13,
            color: Colors.black38,
          ),
        ),
      ],
    ),
  );
}
