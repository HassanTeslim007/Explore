import 'package:explore/core/theme/custom_theme.dart';
import 'package:explore/core/util/colors.dart';
import 'package:explore/core/util/size_config.dart';
import 'package:explore/features/countries/presentation/provider/country_provider.dart';
import 'package:explore/features/countries/presentation/widget/bottomsheets/language_sheet.dart';
import 'package:explore/features/countries/presentation/widget/country_section.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Countries extends StatefulWidget {
  const Countries({super.key});

  @override
  State<Countries> createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CountryProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.fromWidth(context, 5.6),
            vertical: SizeConfig.fromHeight(context, 3.8),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      CustomTheme().currentTheme == ThemeMode.dark
                          ? 'assets/logo_dark.png'
                          : 'assets/logo.png',
                      width: SizeConfig.fromWidth(context, 23),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            currentTheme.toggleTheme();
                          });
                        },
                        icon: CustomTheme().currentTheme == ThemeMode.dark
                            ? const Icon(
                                Icons.dark_mode_rounded,
                              )
                            : const Icon(
                                Icons.light_mode_rounded,
                              ))
                  ],
                ),
                SizedBox(
                  height: SizeConfig.fromHeight(context, 2.16),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search Country',
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    fillColor: inputFieldBackground,
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.fromHeight(context, 2.16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return const LanguageBottomSheet();
                            });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: SizeConfig.fromHeight(context, 4.32),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(54, 169, 184, 212)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.language),
                            SizedBox(
                              width: SizeConfig.fromHeight(context, 2),
                            ),
                            Text(
                              'EN',
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: SizeConfig.fromHeight(context, 4.32),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(54, 169, 184, 212)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.filter_alt_outlined),
                          SizedBox(
                            width: SizeConfig.fromHeight(context, 1),
                          ),
                          Text(
                            'Filter',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.fromHeight(context, 2),
                ),
                CountrySection(provider: provider, letter: 'A'),
                CountrySection(provider: provider, letter: 'B'),
                CountrySection(provider: provider, letter: 'C'),
                CountrySection(provider: provider, letter: 'D'),
                CountrySection(provider: provider, letter: 'E'),
                CountrySection(provider: provider, letter: 'F'),
                CountrySection(provider: provider, letter: 'G'),
                CountrySection(provider: provider, letter: 'H'),
                CountrySection(provider: provider, letter: 'I'),
                CountrySection(provider: provider, letter: 'J'),
                CountrySection(provider: provider, letter: 'K'),
                CountrySection(provider: provider, letter: 'L'),
                CountrySection(provider: provider, letter: 'M'),
                CountrySection(provider: provider, letter: 'N'),
                CountrySection(provider: provider, letter: 'O'),
                CountrySection(provider: provider, letter: 'P'),
                CountrySection(provider: provider, letter: 'Q'),
                CountrySection(provider: provider, letter: 'R'),
                CountrySection(provider: provider, letter: 'S'),
                CountrySection(provider: provider, letter: 'T'),
                CountrySection(provider: provider, letter: 'U'),
                CountrySection(provider: provider, letter: 'V'),
                CountrySection(provider: provider, letter: 'W'),
                CountrySection(provider: provider, letter: 'X'),
                CountrySection(provider: provider, letter: 'Y'),
                CountrySection(provider: provider, letter: 'Z'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
