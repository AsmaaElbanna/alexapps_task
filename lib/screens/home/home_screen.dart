import 'package:alex_apps_task/bloc/data_bloc.dart';
import 'package:alex_apps_task/bloc/data_state.dart';
import 'package:alex_apps_task/screens/home/components/prisoner_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
        'Prisoners List', style: TextStyle(color: Colors.black),),
        centerTitle: true,),
      body: BlocBuilder<DataBloc, DataState>(builder: (context, state) {
        if (state is DataLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        else if (state is DataLoaded) {
          return ListView.builder(itemCount: state.data.prisonerModel!.length,
              itemBuilder: (BuildContext context, int index) {
                return PrisonerCard(
                    state.data.prisonerModel![index].id.toString(),
                    state.data.prisonerModel![index].name.toString(),
                    state.data.prisonerModel![index].place.toString(),
                    state.data.prisonerModel![index].thumbnail.toString(),
                    state.data.prisonerModel![index].neededAmount.toString(),
                    state.data.prisonerModel![index].status.toString());
              });
        }
        else if (state is DataError) {
          return const Center(
            child: Text('We are sorry!'),
          );
        }
        return const Center(child: CircularProgressIndicator(),);
      }),
    );
  }

}