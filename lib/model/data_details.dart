import 'package:alex_apps_task/model/prisoner.dart';

// class DataDetails {
//   Model? prisonerModel;
//
//   DataDetails({this.prisonerModel});
//   factory DataDetails.fromJson(Map<String, dynamic> json) {
//     return DataDetails(
//       prisonerModel: Model.fromJson(
//           json["model"].map((x) => Model.fromJson(x))),
//     );
//
//
//   }
//
// }


// test

class DataDetails {
  String? id;
  String? name;
  String? number;
  String? place;
  String? thumbnail;
  String? image;
  String? status;
  String? neededAmount;
  //
  String? details;

  DataDetails(
      {this.id,
        this.name,
        this.number,
        this.place,
        this.thumbnail,
        this.image,
        this.status,
        this.neededAmount,
        this.details});

  factory DataDetails.fromJson(Map<String, dynamic> json) {
    return DataDetails(
        id: json['model']['id'],
        name: json['model']['name'],
        number: json['model']['number'],
        place: json['model']['place'],
        thumbnail: json['model']['thumbnail'],
        image: json['model']['image'],
        status: json['model']['status'],
        neededAmount: json['model']['neededAmount'].toString(),
        details: json['model']['details']
    );
  }
}

