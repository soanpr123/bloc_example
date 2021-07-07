import 'dart:convert';

import 'package:bloc_example/data/model/ea_sport.dart';
import 'package:http/http.dart' as http;
class PlayerApiProvider{
  String baseUrl = "https://www.easports.com/fifa/ultimate-team/api/fut/item?";
  final successCode = 200;

  Future<List<Item>> fetchPlayersByCountry(String countryId) async {
    final response = await http.get(Uri.parse(baseUrl+"country=" + countryId));

    return parseResponse(response)!;
  }

  Future<List<Item>> fetchPlayersByName(String name) async {
    final response = await http.get(Uri.parse(baseUrl+"name="+name));

    return parseResponse(response)!;
  }


  List<Item>? parseResponse(http.Response response) {
    final responseString = jsonDecode(response.body);

    if (response.statusCode == successCode) {
      return EaSport.fromJson(responseString).items;
    } else {
      throw Exception('failed to load players');
    }
  }
}