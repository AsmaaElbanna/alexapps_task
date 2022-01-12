import 'package:alex_apps_task/model/data_details.dart';
import 'package:alex_apps_task/screens/details/components/prisoner_card_details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

// fetchDetails
Future<DataDetails> fetchDetails(int caseID) async {
  final response = await http
      .get(Uri.parse('http://159.89.4.181:2000/api/v1/cases/$caseID'));
  if (response.statusCode == 200) {
    //print(response.body);
    final data = DataDetails.fromJson(jsonDecode(response.body));
    // print(data.prisonerModel!.details);
    return data;
  } else {
    throw Exception('Failed to load album');
  }
}

class DetailsScreen extends StatefulWidget {
  String id;

  DetailsScreen(this.id, {Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late Future<DataDetails> futureDetails;

  @override
  void initState() {
    super.initState();
    futureDetails = fetchDetails(int.parse(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<DataDetails>(
        future: futureDetails,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Stack(
                children:[ Column(
                  children: [
                    Image.network(
                      snapshot.data!.image.toString(),
                    ),
                    const SizedBox(height: 120,),
                    const Text('Case Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 20,),
                    Text(snapshot.data!.details.toString()),
                  ],
                ),
                  Positioned(right: 10,left:10,top: 470,child:PrisonerCardDetails(
                      snapshot.data!.name.toString(),
                      snapshot.data!.place.toString(),
                      snapshot.data!.thumbnail.toString(),
                      snapshot.data!.neededAmount.toString(),
                      snapshot.data!.status.toString()),),
          ]
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

//Center(child: Text(snapshot.data!.details.toString()));

/*
SingleChildScrollView(
          child: Stack(
        children: [
          Column(
            children: [
              Image.network('https://efraaj.com/default/prisoner_image.webp'),
              Text(
                'Expedita quam doloribus quam nemo ut tenetur. Rerum ut molestias ut.'
                ' Qui quia consequatur ab inventore libero hic debitis sit nisi. '
                'Dignissimos ut ea a exercitationem. Expedita quo aut et quia dicta eius f'
                'acilis totam veritatis. Sint sequi rerum similique magni consequatur labore'
                ' quaerat rerum. Sed assumenda qui rem architecto tempore aut. Ut repellat ut. '
                'Autem nesciunt distinctio cumque eaque temporibus ea. Id minus beatae voluptatem'
                ' amet et debitis. Doloribus quisquam eaque. Quasi dolor laboriosam. Et aut unde'
                ' tempore qui occaecati modi. Doloremque sunt sunt velit rem libero velit totam'
                ' perspiciatis repellat. Est quia necessitatibus. Explicabo delectus omnis minima. '
                'Quo excepturi et illum ratione ab accusantium labore minus. Dicta molestias sit ut. '
                'Nisi totam harum voluptatem occaecati similique molestias. Dolore corporis et.',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          Positioned(
            child: PrisonerCard('2','Joseph','America','https://efraaj.com/default/prisoner_thumbnail.webp','kk','kk'),
            right: 20,
            bottom: 350,
          )
        ],
      ))
 */
