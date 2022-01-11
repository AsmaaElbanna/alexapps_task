import 'package:alex_apps_task/screens/home/components/prisoner_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Prisoners List'),centerTitle: true,),
      body: Column(
        children: [
          PrisonerCard(),
          PrisonerCard(),
          PrisonerCard(),
        ],
      )
    );
  }
}
