import 'package:flutter/material.dart';

import 'functions.dart';

class Otpfrom extends StatefulWidget {
  const Otpfrom({Key? key}) : super(key: key);

  @override
  _OtpfromState createState() => _OtpfromState();
}

class _OtpfromState extends State<Otpfrom> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextfiled(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 55,
            height: 55,
            child: TextFormField(
              autofocus: true,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              decoration: otpdecration,
              onChanged: (value) {
                nextfiled(value, pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 55,
            height: 55,
            child: TextFormField(
              focusNode: pin2FocusNode,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              decoration: otpdecration,
              onChanged: (value) {
                nextfiled(value, pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 55,
            height: 55,
            child: TextFormField(
              focusNode: pin3FocusNode,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              decoration: otpdecration,
              onChanged: (value) {
                nextfiled(value, pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 55,
            height: 55,
            child: TextFormField(
              focusNode: pin4FocusNode,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              decoration: otpdecration,
              onChanged: (value) {
                pin4FocusNode.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
