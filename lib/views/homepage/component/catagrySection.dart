import 'package:flutter/material.dart';

class CatagorySection extends StatelessWidget {
  final Widget image;
  final String title;
  const CatagorySection({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, top: 8),
      width: 180,
      height: 180,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),

            child: image,
            // child: Image.network(
            //   "https://image.freepik.com/free-photo/top-view-vegetable-soup-with-meat-inside-plate-grey_140725-36040.jpg",
            //   fit: BoxFit.cover,
            // ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              // color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Colors.white.withOpacity(0.23),
                ),
              ],
            ),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
