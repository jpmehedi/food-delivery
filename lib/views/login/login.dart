import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/views/otp/otp.dart';

class LoginScreen extends StatelessWidget {
  static const String PATH = "/LoginScreen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomLongButton(
              onPressed: () {
                Navigator.pushNamed(context, Otppage.PATH);
              },
              buttonName: "Login",
            ),
            SizedBox(
              height: 20,
            ),
            CustomLongButton(
              onPressed: () {},
              buttonName: "Login with facebook",
              backgroundColor: AppColor.secondaryColor,
              icon: Icons.face_outlined,
            ),
            SizedBox(
              height: 20,
            ),
            CustomLongButton(
              onPressed: () {},
              buttonName: "Create an account",
              backgroundColor: Colors.white,
              textColor: AppColor.primaryTextColor,
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomLongButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? buttonName;
  final Color? backgroundColor;
  final BorderSide? borderSide;
  final IconData? icon;
  final Color? textColor;
  const CustomLongButton(
      {Key? key,
      this.buttonName,
      this.textColor,
      this.onPressed,
      this.backgroundColor,
      this.borderSide,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 48)),
          backgroundColor: backgroundColor != null
              ? MaterialStateProperty.all(backgroundColor)
              : null,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: borderSide ?? BorderSide.none,
          ))),
      onPressed: onPressed!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon == null ? Container(width: 0, height: 0) : Icon(icon!),
          icon == null ? Container(width: 0, height: 0) : SizedBox(width: 14),
          Text(
            buttonName!,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}
