import 'package:explore/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: kWhite, elevation: 0),
      scaffoldBackgroundColor: Colors.white,
      iconTheme: IconThemeData(color: kBlack),
      textTheme: GoogleFonts.poppinsTextTheme(
        const TextTheme(
            displayMedium: TextStyle(
                color: Colors.black,
                height: 1,
                letterSpacing: 3.0,
                fontSize: 32),
            bodySmall: TextStyle(color: Colors.black)),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: kBlack, elevation: 0),
      iconTheme: IconThemeData(color: kWhite),
      scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
      textTheme: GoogleFonts.poppinsTextTheme(
        const TextTheme(
          displayMedium: TextStyle(
              color: Colors.white, height: 1, letterSpacing: 3.0, fontSize: 32),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

CustomTheme currentTheme = CustomTheme();
