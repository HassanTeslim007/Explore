import 'package:explore/features/countries/data/services/api_service.dart';
import 'package:explore/features/countries/domain/models/country_model.dart';
import 'package:flutter/material.dart';

class CountryProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Country> countries = [];

  List<Country> foundList = [];

  List<Country> searchedCountriesList = [];

  CountryProvider() {
    fetchCountries();
  }

  Future<void> fetchCountries() async {
    debugPrint('Triggered');
    isLoading = true;
    notifyListeners();
    countries = await APIService().getCountryList();
    countries.sort((a, b) => a.name!.common!.compareTo(b.name!.common!));
    foundList = countries;
    isLoading = false;
    notifyListeners();
  }

  void filterItems(String letters) {
    if (letters.isEmpty) {
      searchedCountriesList = countries;
    } else {
      searchedCountriesList = countries
          .where(
            (element) => element.name!.common!
                .toLowerCase()
                .contains(letters.toLowerCase()),
          )
          .toList();
    }
    foundList = searchedCountriesList;
    notifyListeners();
  }

  void filterByContinent(List<String>? continents){
    searchedCountriesList.where((element) => element.continents!.contains(continents)).toList();
    foundList = searchedCountriesList;
    notifyListeners();
    print(foundList);

  }
}
