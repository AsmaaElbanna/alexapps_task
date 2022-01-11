import 'package:alex_apps_task/model/prisoner.dart';

class Data {
  List<Model>? prisonerModel;

  Data({this.prisonerModel});
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      prisonerModel: List<Model>.from(
          json["model"].map((x) => Model.fromJson(x))),
    );
  }
}

//
//
//
// //
// // class Data {
// //   Data({
// //     required this.model,
// //   });
// //
// //   List<Model> model;
// //
// //
// //   factory Data.fromMap(Map<String, dynamic> json) => Data(
// //     model: List<Model>.from(json["model"].map((x) => Model.fromMap(x))),
// //   );
// //
// // }
//
// class Model {
//   Model({
//     required this.id,
//     required this.name,
//     required this.number,
//     required this.place,
//     required this.image,
//     required this.status,
//     required this.neededAmount
//   });
//
//   String id;
//   String? name;
//   String? number;
//   String? place;
//   String? image;
//   String? status;
//   String? neededAmount;
//
//   factory Model.fromMap(Map<String, dynamic> json) => Model(
//     id: json["id"],
//     name: json["name"],
//     number: json["number"],
//     place: json["place"],
//     image: json["image"],
//     status: json["status"],
//     neededAmount: json["neededAmount"]
//   );
//
// }
