import 'package:crud/cubit/app_cubit.dart';
import 'package:crud/pages/details/widgets/bottom_part.dart';
import 'package:crud/widgets/banner/banner_button.dart';
import 'package:crud/widgets/banner/banner_paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        //this "details" will include the state and information inside the state
        DataDetailsState detail = state as DataDetailsState;

        return Container(
            //color: Colors.amber,
            height: double.infinity,
            child: Stack(children: [
              Positioned(
                  // top: 10,
                  child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/writting1.jpeg"),
                        fit: BoxFit.cover)),
              )),
              Positioned(
                  top: 100,
                  left: 10,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Container(
                    //color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            BlocProvider.of<AppCubit>(context).home();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )),
              Positioned(top: 300, bottom: 0, child: BottomPart()),
              Positioned(
                  top: 350,
                  child: BannerParagraph(
                      text: "${detail.places.title}",
                      size: 14,
                      color: Colors.black)),
              Positioned(
                  top: 400,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.grey,
                        child: Icon(Icons.favorite_outline),
                      ),
                      Container(
                        child: BannerButton(
                          islearge: true,
                          width: 200,
                          text: "Book now",
                        ),
                      )
                    ],
                  ))
            ]));
      },
    ));
  }
}
