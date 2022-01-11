import 'package:alex_apps_task/screens/home/components/prisoner_card.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
            child: PrisonerCard('Joseph','America','https://efraaj.com/default/prisoner_thumbnail.webp','kk','kk'),
            right: 20,
            bottom: 350,
          )
        ],
      )),
    );
  }
}
