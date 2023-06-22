part of 'app_cubit.dart';

abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppInitialState extends AppState {
  @override
  List<Object> get props => [];
}

class WElcomeState extends AppState {
  @override
  List<Object> get props => [];
}

class DataLoadingState extends AppState {
  @override
  List<Object> get props => [];
}

class DataLoadedState extends AppState {
  DataLoadedState(this.places);
  final List<ProductModel> places;
  @override
  List<Object> get props => [places];
}

class DataDetailsState extends AppState {
  DataDetailsState(this.places);
  final ProductModel places;
  @override
  List<Object> get props => [places];
}

class DataErrorState extends AppState {
  final String error;
  DataErrorState(this.error);
}
