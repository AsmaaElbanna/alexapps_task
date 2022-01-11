import 'package:alex_apps_task/model/data.dart';
import 'package:alex_apps_task/screens/home/components/prisoner_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<Data> fetchAlbum() async {
  final response = await http
      .get(
      Uri.parse('http://159.89.4.181:2000/api/v1/cases?caseStatus=2'));
  if (response.statusCode == 200) {
    print(response.body);
    final data = Data.fromJson(jsonDecode(response.body));
    print(data);
    return data;
  } else {
    throw Exception('Failed to load album');
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<Data> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Prisoners List'),centerTitle: true,),
      body: FutureBuilder<Data>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PrisonerCard(snapshot.data!.prisonerModel![0].name.toString());
          } else if (snapshot.hasError) {
            //print(snapshot.data.);
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
//            return Text(snapshot.data!.sportsModel![0].strSport.toString());

