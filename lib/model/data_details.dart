import 'package:alex_apps_task/model/prisoner.dart';

class DataDetails {
  Model? prisonerModel;

  DataDetails({this.prisonerModel});
  factory DataDetails.fromJson(Map<String, dynamic> json) {
    return DataDetails(
      prisonerModel: Model.fromJson(
          json["model"].map((x) => Model.fromJson(x))),
    );
  }

}