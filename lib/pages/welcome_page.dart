import 'package:crud/cubit/app_cubit.dart';
import 'package:crud/widgets/banner/banner_button.dart';
import 'package:crud/widgets/banner/banner_header.dart';
import 'package:crud/widgets/banner/banner_paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static const images = [
    "images/writting1.jpeg",
    "images/writting1.jpeg",
    "images/writting1.jpeg"
  ];
  static const text = ["header1", "header2", "header3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images[index]), fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 100, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BannerHeader(
                            text: "Banner Page ${text[index]}",
                            size: 30,
                            color: Colors.red),
                        Container(
                          width: 250,
                          child: BannerParagraph(
                              text:
                                  "bla bla bla this bla bla bla thisbla bla bla thisbla bla bla thisbla bla bla thisbla bla bla this ",
                              size: 14,
                              color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AppCubit>(context).getdata();
                            // context.read<AppCubit>().getdata();

                            print("button clicked ");
                          },
                          child: BannerButton(
                            islearge: false,
                            width: 120,
                            text: "butoon",
                          ),
                        )
                      ],
                    ),
                    Column(
                        children: List.generate(3, (indexDots) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: 8,
                        height: index == indexDots ? 25 : 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? Colors.blue
                                : Colors.white),
                      );
                    }))
                  ],
                ),
              ),
            );
          }),
    ));
  }
}
