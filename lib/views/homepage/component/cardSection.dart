import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  final Widget image;
  final String title;

  const CardSection({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(child: image),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
