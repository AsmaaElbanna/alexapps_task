import 'package:alex_apps_task/screens/details/details_screen.dart';
import 'package:flutter/material.dart';


class PrisonerCard extends StatefulWidget {
  String id;
  String name;
  String place;
  String thumbNail;
  String neededAmount;
  String status;
  PrisonerCard(this.id, this.name, this.place, this.thumbNail,
      this.neededAmount, this.status,
      {Key? key})
      : super(key: key);

  @override
  State<PrisonerCard> createState() => _PrisonerCardState();
}

class _PrisonerCardState extends State<PrisonerCard> {



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsScreen(widget.id)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.place)
                  ],
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.thumbNail),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.neededAmount + ' AED'}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(widget.status)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(color: Colors.black12),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Expedita quam doloribus quam nemo ut tenetur, \n Rerum ut molestias ut. ',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
