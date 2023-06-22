import 'package:flutter/material.dart';

class BannerHeader extends StatelessWidget {
  String text;
  double size;
  Color color;
  BannerHeader(
      {Key? key, required this.text, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            color: color, fontSize: size, fontWeight: FontWeight.bold),
      ),
    );
  }
}
