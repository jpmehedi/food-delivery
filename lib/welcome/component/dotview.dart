import 'package:flutter/material.dart';

import 'model.dart';

class Dotview extends StatelessWidget {
  const Dotview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            contans.length,
            (index) => Container(
              margin: EdgeInsets.only(left: 7),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
