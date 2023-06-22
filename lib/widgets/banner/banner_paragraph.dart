import 'package:flutter/material.dart';

class BannerParagraph extends StatelessWidget {
  String text;
  double size;
  Color color;
  BannerParagraph(
      {Key? key, required this.text, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            color: color, fontSize: size, fontWeight: FontWeight.normal),
      ),
    );
  }
}
