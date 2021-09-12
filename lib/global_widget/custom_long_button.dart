import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ElevatedButton(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(double.infinity, 48)),
            backgroundColor: backgroundColor != null
                ? MaterialStateProperty.all(backgroundColor)
                : null,
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
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
      ),
    );
  }
}
