import 'package:crud/cubit/app_cubit.dart';
import 'package:crud/pages/details/details_page.dart';
import 'package:crud/pages/navpages/landing_page.dart';
import 'package:crud/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StateControl extends StatelessWidget {
  const StateControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (state is AppInitialState || state is WElcomeState) {
          return WelcomePage();
        } else if (state is DataLoadingState) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (state is DataLoadedState) {
          return LandingPage();
        } else if (state is DataErrorState) {
          return Container(
            child: Text("error is ${state.error}"),
          );
        } else if (state is DataDetailsState) {
          return DetailsPage();
        } else {
          return Container();
        }
      },
    ));
  }
}
