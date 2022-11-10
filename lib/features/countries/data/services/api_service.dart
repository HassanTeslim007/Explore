import 'package:dio/dio.dart';
import 'package:explore/features/countries/domain/models/country_model.dart';
import 'package:explore/features/countries/domain/repository/country_repository.dart';
import 'package:flutter/widgets.dart';

class APIService implements CountryRepository {
  static var dio = Dio();

  @override
  Future<List<Country>> getCountryList() async {
    debugPrint('getting countiries........');
    var response = await dio.get('https://restcountries.com/v3.1/all');
    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((country) => Country.fromJson(country)).toList();
    } else {
      throw Exception('Failed to get countries');
    }
  }
}
