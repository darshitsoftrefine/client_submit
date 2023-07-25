import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData lightTheme() {
    return ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: CustomColors.secondaryColor),
            ),
            hintStyle: GoogleFonts.roboto(color: CustomColors.secondaryColor, fontWeight: FontWeight.w400, fontSize: 18)),
        textTheme: TextTheme(
          //button: GoogleFonts.roboto(color: CustomColors.primaryColor, fontWeight: FontWeight.w400, fontSize: 15),
          //bodyMedium: GoogleFonts.montserrat(color: CustomColors.mainColor, fontSize: 20, fontWeight: FontWeight.w500),
          labelMedium: GoogleFonts.roboto(color: CustomColors.secondaryColor, fontWeight: FontWeight.w400, fontSize: 15),
          labelLarge: GoogleFonts.roboto(color: CustomColors.primaryColor, fontWeight: FontWeight.w400, fontSize: 15),
          //headlineMedium: GoogleFonts.montserrat(color: CustomColors.customBlack, fontSize: 18, fontWeight: FontWeight.w700),
          titleSmall: GoogleFonts.roboto(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          titleLarge: GoogleFonts.roboto(color: CustomColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w600),
          bodySmall: GoogleFonts.roboto(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          labelSmall: GoogleFonts.roboto(color: Colors.black, fontSize: 18.57, fontWeight: FontWeight.w400),
          displaySmall: GoogleFonts.roboto(color:Colors.black, fontSize: 10, fontWeight: FontWeight.w500),
        ));
  }
}

class CustomColors {
  static Color primaryColor = const Color(0xFF2B3087);
  static Color buttonColor = const Color(0xFF6167C9);
  static Color secondaryColor = const Color(0xFFFFFFFF);
  static Color onboardColor = const Color(0xFF00AF3C);
  static Color circColor = const Color(0xFFA08DCF);

  static Color listA1 = const Color(0xFF71A1FF);
  static Color listA2 = const Color(0xFF7B7B7B);
  static Color listA3 = const Color(0xFF4DB457);
  static Color listB1 = const Color(0xFF4875CB);
  static Color listB2 = const Color(0xFF963E68);
  static Color listB3 = const Color(0xFF9A854D);
  static Color listC1 = const Color(0xFFB4784D);
  static Color listC2 = const Color(0xFF6CD877);
  static Color listC3 = const Color(0xFFA4A4A4);

}