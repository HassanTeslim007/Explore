import 'package:explore/core/util/size_config.dart';
import 'package:explore/features/countries/presentation/view/country_details.dart';
import 'package:flutter/material.dart';

import '../../domain/models/country_model.dart';

class CountryTile extends StatelessWidget {
  final Country country;
  const CountryTile({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CountryDetails(country: country))),
      child: Container(
        margin:
            EdgeInsets.symmetric(vertical: SizeConfig.fromHeight(context, 2)),
        child: Row(
          children: [
            Container(
              height: SizeConfig.fromHeight(context, 4.3),
              width: SizeConfig.fromWidth(context, 9.3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(country.flags!.png!),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: SizeConfig.fromWidth(context, 4.3),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country.name!.common!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: SizeConfig.fromHeight(context, 0.5),
                ),
                country.capital != null
                    ? Text(
                        country.capital.toString().substring(
                            1, (country.capital.toString().length - 1)),
                      )
                    : const SizedBox()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
