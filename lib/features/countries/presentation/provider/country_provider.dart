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
    debugPrint(countries.length.toString());
    countries.sort((a, b) => a.name!.common!.compareTo(b.name!.common!));
    for (int i = 0; i < countries.length; i++) {
      if (countries[i].name!.common!.startsWith('A')) {
        debugPrint(countries[i].name!.common);
      }
    }
    isLoading = false;
    notifyListeners();
  }
}
