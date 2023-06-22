import 'package:crud/cubit/app_cubit.dart';
import 'package:crud/widgets/banner/banner_header.dart';
import 'package:crud/widgets/banner/banner_paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  var Options = {
    "Icons.travel_explore": "Travel1",
    "Icons.card_travel": "Travel1",
    "Icons.card_travel_outline": "Travel1",
    "Icons.travel_explore_outline": "Travel1",
    "Icons.wallet_travel": "Travel1",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabcontrol = TabController(length: 3, vsync: this);
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (state is DataLoadedState) {
          var data = state.places;
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: TabBar(
                        controller: _tabcontrol,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        tabs: [
                          Tab(
                            text: "A tab",
                          ),
                          Tab(
                            text: "B tab",
                          ),
                          Tab(
                            text: "C tab",
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 300,
                    width: double.maxFinite,
                    child: TabBarView(controller: _tabcontrol, children: [
                      ListView.builder(
                        itemCount: data.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              BlocProvider.of<AppCubit>(context)
                                  .details(data[index]);
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 200,
                              height: 500,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("images/writting1.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                          );
                        },
                      ),
                      Text("two"),
                      Text("three"),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BannerHeader(
                              text: "Explore", size: 20, color: Colors.black),
                          BannerParagraph(
                              text: "see more", size: 10, color: Colors.grey)
                        ]),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 120,
                    width: double.maxFinite,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, item) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 15, top: 10),
                                width: 80,
                                height: 80,
                                color: Colors.white,
                                //child:Text(Options.keys.elementAt(item))
                                child: Icon(
                                  Icons.travel_explore,
                                  color: Colors.cyan,
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(right: 15, top: 10),
                                  color: Colors.white,
                                  child: Text(Options.values.elementAt(item)))
                            ],
                          );
                        }),
                  )
                ],
              ),
            ),
          );
        } else {
          return Container(
            child: Text("not on Loaded State"),
          );
        }
      },
    );
  }
}
