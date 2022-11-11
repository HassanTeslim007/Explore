import 'package:explore/features/countries/presentation/provider/country_provider.dart';
import 'package:explore/features/countries/presentation/widget/country_file.dart';
import 'package:flutter/material.dart';

class CountrySection extends StatelessWidget {
  final CountryProvider provider;
  final String letter;
  const CountrySection(
      {super.key, required this.provider, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(letter),
        Expanded(
          flex: 0,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: provider.countries.length,
              itemBuilder: (context, index) {
                if (provider.countries[index].name!.common!.startsWith(letter)) {
                  return CountryTile(country: provider.countries[index]);
                }
                return const SizedBox();
              }),
        ),
      ],
    );
  }
}
