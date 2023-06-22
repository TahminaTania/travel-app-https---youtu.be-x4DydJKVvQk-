import 'package:crud/widgets/banner/banner_header.dart';
import 'package:flutter/material.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BannerHeader(text: "Yosemite", size: 24, color: Colors.black),
            BannerHeader(text: "\$245", size: 24, color: Colors.green),
          ],
        )
      ]),
    );
  }
}
