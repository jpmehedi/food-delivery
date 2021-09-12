import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/views/login/login.dart';
import 'package:food_delivery/welcome/component/model.dart';

import 'component/dotview.dart';
import 'component/welcometext.dart';

class Welcomescreen extends StatefulWidget {
  static const String PATH = "Welcomepage";
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  _WelcomescreenState createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  var indexpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: (index) {
            setState(() {
              indexpage = index;
            });
          },
          itemCount: contans.length,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 300,
                    child: Image.asset(contans[index].image!),
                  ),
                  Dotview(),
                  welcometext(context, index),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: CustomLongButton(
                      backgroundColor: AppColor.primaryColor,
                      buttonName: 'Next',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
