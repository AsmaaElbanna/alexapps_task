// import 'package:http/http.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart';
//
// class Data {
//   List<Model>? models;
//
//   Data({
//     this.models,
//   });
//
//   factory Data.fromJson(Map<String, dynamic> json) {
//     return Data(
//         models: json['models'] != null
//             ? json['models'].map<Model>((json) => Model.fromJson(json)).toList()
//             : null);
//   }
// }
//
// class Model {
//
//   String id;
//   String? name;
//   String? number;
//   String? place;
//   String? image;
//   String? status;
//   String? neededAmount;
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
//
//   factory Model.fromJson(Map<String, dynamic> json) => Model(
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
//
// class HttpService {
//   static String url = "https://my-json-server.typicode.com/typicode/demo/db";
//
//   static Future<Data> getPost() async {
//     Response response = await get();
//
//     if (response.statusCode == 200) {
//       final parsed = json.decode(response.body).cast<String, dynamic>();
//       return Data.fromJson(parsed);
//     }
//   }
// }
