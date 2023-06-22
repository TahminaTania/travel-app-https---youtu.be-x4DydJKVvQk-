import 'package:bloc/bloc.dart';
import 'package:crud/model/products.dart';
import 'package:crud/repository/repository.dart';
import 'package:equatable/equatable.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final Datarepository data;
  AppCubit({required this.data}) : super(AppInitialState()) {
    emit(
      WElcomeState(),
    );
  }

  //late final places;
  void getdata() async {
    try {
      emit(DataLoadingState());
      print("on cubit page ${state}");
      final places = await data.getInfo();
      print("got info");
      emit(DataLoadedState(places));
      print("send to repo");
    } catch (e) {
      print("on app cubit error");
      emit(DataErrorState(e.toString()));
    }
  }

  details(ProductModel data) {
    emit(DataDetailsState(data));
  }

  void home() {
    emit(AppInitialState());
  }
}
