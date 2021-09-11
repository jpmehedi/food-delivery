import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

Container cleckhere() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t reuse'),
        Text(
          'Click here',
          style: TextStyle(
            color: AppColor.primaryColor,
          ),
        ),
      ],
    ),
  );
}
