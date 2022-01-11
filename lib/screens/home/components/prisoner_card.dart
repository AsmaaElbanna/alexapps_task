import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrisonerCard extends StatelessWidget {
  const PrisonerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),
          //     spreadRadius: 3,
          //     blurRadius: 2,
          //     offset: Offset(5, 5), // changes position of shadow
          //   ),
          // ],
          ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Joseph',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('America')
                ],
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://static.remove.bg/remove-bg-web/6cc620ebfb5922c21227f533a09d892abd65defa/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png'),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 10,
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('2000 AED'), Text('Goal Completed')],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            decoration: BoxDecoration(color: Colors.black12),
          ),
          Text(
            'Expedita quam doloribus quam nemo ut tenetur, \n Rerum ut molestias ut. ',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
