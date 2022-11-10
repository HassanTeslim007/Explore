import 'package:explore/features/countries/domain/models/country_model.dart';

abstract class CountryRepository{
  Future<List<Country>> getCountryList();
}