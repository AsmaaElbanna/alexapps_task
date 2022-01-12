import 'package:alex_apps_task/model/data.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
abstract class DataRepository{
  Future<Data> getAllData();
}

class DataRepositoryAPI extends DataRepository{
  @override
  Future<Data> getAllData() async{
    final response = await http
        .get(
        Uri.parse('http://159.89.4.181:2000/api/v1/cases?caseStatus=2'));
    if (response.statusCode == 200) {
      //print(response.body);
      final data = Data.fromJson(jsonDecode(response.body));
      // print(data);
      return data;
    } else {
      throw Exception('Failed to load album');
    }
  }

}