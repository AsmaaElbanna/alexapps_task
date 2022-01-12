import 'package:alex_apps_task/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

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
          textTheme:TextTheme(
            bodyText1: TextStyle(color: Colors.black),
             bodyText2: TextStyle(color: Colors.black),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(headline6: TextStyle(color: Color(0XFF8B8B8B))),
              color: Colors.white,
              elevation: 0,
              brightness: Brightness.light,
              iconTheme: IconThemeData(color: Colors.black)
          )
      ),
      home: const HomeScreen(),
    );
  }
}

