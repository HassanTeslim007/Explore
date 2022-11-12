import 'package:explore/core/util/size_config.dart';
import 'package:explore/features/countries/presentation/widget/filter_checkbox_tiles.dart';
import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  bool continentsOpened = false;
  bool timeZonesOpened = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.fromWidth(context, 6), vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Filter',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.fontSize(context, 5))),
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close))
              ],
            ),
            IntrinsicHeight(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Continents',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.fontSize(context, 4))),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              continentsOpened = !continentsOpened;
                            });
                          },
                          icon: Icon(continentsOpened
                              ? Icons.expand_more
                              : Icons.expand_less))
                    ],
                  ),
                  continentsOpened
                      ? Column(
                          children: List.generate(
                            7,
                            (index) =>
                                FilterCheckBoxTile(title: continents[index]),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Time Zones',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.fontSize(context, 4))),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              timeZonesOpened = !timeZonesOpened;
                            });
                          },
                          icon: Icon(timeZonesOpened
                              ? Icons.expand_more
                              : Icons.expand_less))
                    ],
                  ),
                  timeZonesOpened
                      ? Column(
                          children: List.generate(
                            8,
                            (index) =>
                                FilterCheckBoxTile(title: timeZones[index]),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List continents = [
  'Africa',
  'Antartica',
  'Asia',
  'Australia',
  'Europe',
  'North America',
  'South America'
];

List timeZones = [
  'GMT-3:00',
  'GMT-2:00',
  'GMT-1:00',
  'GMT+1:00',
  'GMT+2:00',
  'GMT+3:00',
  'GMT+4:00',
  'GMT+5:00'
];
