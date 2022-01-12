import 'package:alex_apps_task/bloc/data_event.dart';
import 'package:alex_apps_task/bloc/data_state.dart';
import 'package:alex_apps_task/repository/data_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  final DataRepository repository;
  DataBloc(this.repository) : super(DataInitial());

  @override
  Stream<DataState> mapEventToState(DataEvent event) async* {
    if (event is FetchEvent) {
      yield DataLoading();
      try {
        final data = await repository.getAllData();
        yield DataLoaded(data);
      } catch (e) {
        yield DataError(e.toString());
      }
    }
  }
}
