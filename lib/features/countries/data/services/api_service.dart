import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:explore/features/countries/domain/models/country_model.dart';
import 'package:explore/features/countries/domain/repository/country_repository.dart';

class APIService implements CountryRepository {
  static var dio = Dio();

  @override
  Future<List<Country>> getCountryList() async {
    debugPrint('loading......');
    final url = Uri.parse('https://restcountries.com/v3.1/all');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      // debugPrint(jsonData);
      return List.from(jsonData).map((e) => Country.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load country data');
    }

//     debugPrint('getting countiries........');
//     try {
//   var response = await dio.get('https://restcountries.com/v3.1/all');
//   if (response.statusCode == 200) {
//     final List<dynamic> data = response.data;
//     return data.map((country) => Country.fromJson(country)).toList();
//   } else {
//     throw Exception('Failed to get countries');
//   }
// } on HttpException catch (e) {
//   debugPrint(e.message);
//  rethrow;

// }
//   }
  }
}
