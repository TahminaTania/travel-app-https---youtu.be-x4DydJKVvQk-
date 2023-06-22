import 'package:flutter/material.dart';

class BannerButton extends StatelessWidget {
  bool? islearge;
  double? width;
  String text;
  BannerButton(
      {Key? key, this.text = '', required this.islearge, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 89, 24, 101)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text(text), Icon(Icons.arrow_forward)]),
    );
  }
}
