import 'package:flutter/material.dart';
import 'package:food_delivery/global_widget/custom_long_button.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/welcome/welcome.dart';
import 'components/clickhere.dart';
import 'components/from.dart';
import 'components/otptext.dart';

class Otppage extends StatefulWidget {
  static const String PATH = 'Otppage';
  const Otppage({Key? key}) : super(key: key);

  @override
  _OtppageState createState() => _OtppageState();
}

class _OtppageState extends State<Otppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Center(
            child: Column(
              children: [
                otptext(),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  child: Otpfrom(),
                ),
                SizedBox(
                  height: 50,
                ),
                CustomLongButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Welcomescreen.PATH);
                  },
                  buttonName: "Next",
                  backgroundColor: AppColor.primaryColor,
                ),
                cleckhere(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
