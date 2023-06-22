import 'package:crud/PageStates/state_control.dart';
import 'package:crud/cubit/app_cubit.dart';
import 'package:crud/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(
        data: Datarepository(),
      ),
      child: MaterialApp(
        title: 'Travel App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: StateControl(),
      ),
    );
  }
}
