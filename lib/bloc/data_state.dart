// Home state
import 'package:alex_apps_task/model/data.dart';

abstract class DataState {}

class DataInitial extends DataState {}

class DataLoading extends DataState {}

class DataLoaded extends DataState {
  final Data data;
  DataLoaded(this.data);
}

class DataError extends DataState {
  final String message;
  DataError(this.message);
}