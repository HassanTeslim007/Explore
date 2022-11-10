import 'package:explore/features/countries/data/services/api_service.dart';
import 'package:explore/features/countries/domain/models/country_model.dart';
import 'package:flutter/material.dart';

class CountryProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Country> countries = [];

  CountryProvider() {
    fetchCountries();
  }

  Future<void> fetchCountries() async {
    debugPrint('Triggered');
    isLoading = true;
    notifyListeners();
    countries = await APIService().getCountryList();
    countries.sort((a,b)=>a.name!.official!.compareTo(b.name!.official!));
    isLoading = false;
    notifyListeners();
  }

}
