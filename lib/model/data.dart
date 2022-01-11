import 'package:alex_apps_task/model/prisoner.dart';

class Data {
  List<Prisoner>? prisonerModel;

  Data({this.prisonerModel});
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      prisonerModel: List<Prisoner>.from(
          json["model"].map((x) => Prisoner.fromJson(x))),
    );
  }
}
