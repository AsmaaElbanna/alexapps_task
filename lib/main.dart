import 'package:alex_apps_task/bloc/data_bloc.dart';
import 'package:alex_apps_task/bloc/data_event.dart';
import 'package:alex_apps_task/repository/data_repository.dart';
import 'package:alex_apps_task/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:const TextTheme(
            bodyText1: TextStyle(color: Colors.black),
             bodyText2: TextStyle(color: Colors.black),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: const AppBarTheme(
              textTheme: TextTheme(headline6: TextStyle(color: Color(0XFF8B8B8B))),
              color: Colors.white,
              elevation: 0,
              brightness: Brightness.light,
              iconTheme: IconThemeData(color: Colors.black)
          )
      ),
      home:  BlocProvider(
          create: (context) => DataBloc(DataRepositoryAPI())..add(FetchEvent()),
          child: HomeScreen()),
    );
  }
}

