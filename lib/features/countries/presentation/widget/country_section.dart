import 'package:explore/features/countries/presentation/provider/country_provider.dart';
import 'package:explore/features/countries/presentation/widget/country_tile.dart';
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
        Text(
          letter,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Expanded(
          flex: 0,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: provider.foundList.length,
              itemBuilder: (context, index) {
                if (provider.foundList[index].name!.common!
                        .startsWith(letter) &&
                    provider.foundList[index].name!.common! != 'Antarctica') {
                  return CountryTile(country: provider.foundList[index]);
                }
                return const SizedBox();
              }),
        ),
      ],
    );
  }
}
