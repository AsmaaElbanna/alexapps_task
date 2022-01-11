import 'package:alex_apps_task/model/data.dart';
import 'package:alex_apps_task/model/prisoner.dart';
import 'package:alex_apps_task/screens/home/components/prisoner_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<Data> fetchData() async {
  final response = await http
      .get(
      Uri.parse('http://159.89.4.181:2000/api/v1/cases?caseStatus=2'));
  if (response.statusCode == 200) {
    //print(response.body);
    final data = Data.fromJson(jsonDecode(response.body));
   // print(data);
    return data;
  } else {
    throw Exception('Failed to load album');
  }
}

// fetchDetails
Future<Model> fetchDetails(int caseID) async {

  final response = await http
      .get(
      Uri.parse('http://159.89.4.181:2000/api/v1/cases/$caseID'));
  if (response.statusCode == 200) {
    //print(response.body);
    final data = Model.fromJson(jsonDecode(response.body));
    // print(data);
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
  late Future<Data> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Prisoners List'),centerTitle: true,),
      body: FutureBuilder<Data>(
        future: futureData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(itemCount: snapshot.data!.prisonerModel!.length,itemBuilder:(context,index){
              return PrisonerCard(snapshot.data!.prisonerModel![index].id.toString(),
                  snapshot.data!.prisonerModel![index].name.toString(),
                  snapshot.data!.prisonerModel![index].place.toString(),
                  snapshot.data!.prisonerModel![index].thumbnail.toString(),
                  snapshot.data!.prisonerModel![index].neededAmount.toString(),
                  snapshot.data!.prisonerModel![index].status.toString());
            });
          } else if (snapshot.hasError) {
            //print(snapshot.data.);
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
/*

PrisonerCard(snapshot.data!.prisonerModel![0].name.toString(),
                snapshot.data!.prisonerModel![0].place.toString(),
                snapshot.data!.prisonerModel![0].thumbnail.toString(),
                snapshot.data!.prisonerModel![0].neededAmount.toString(),
                snapshot.data!.prisonerModel![0].status.toString());
 */
