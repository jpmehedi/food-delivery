import 'package:flutter/material.dart';

import 'model.dart';

Container welcometext(BuildContext context, int index) {
  return Container(
    margin: EdgeInsets.only(right: 20, left: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          contans[index].titletext!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        Text(
          contans[index].dteals!,
          textAlign: TextAlign.center,
          maxLines: 3,
          style: TextStyle(
            fontSize: 15,
            color: Colors.blueGrey,
          ),
        )
      ],
    ),
  );
}
