import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color primeColor = Color(0xFFB7935F);
  static Color primeDarkColor = Color(0xFF141A2E);
  static Color secDarkColor = Color(0xFF141A2E);


  static ThemeData lightTheme = ThemeData(

      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.elMessiri(
          textStyle: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.w700),
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 32,
        ),
        unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 28
        ),
      ),
      colorScheme: ColorScheme(
          primary: primeColor,
          onPrimary: Color(0xFFFACC1D),
          onSurface: Colors.white,
          brightness: Brightness.light,
          secondary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.white,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.white,
          surface: Colors.white

      ),
      cardTheme: CardTheme (
        color: Colors.white,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
        margin: EdgeInsets.symmetric(vertical: 40,horizontal: 25),
      )
  );
  static ThemeData darkTheme =ThemeData(

      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.elMessiri(
          textStyle: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.w700),
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: secDarkColor,
        selectedIconTheme: IconThemeData(
          color: secDarkColor,
          size: 32,
        ),
        unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 28
        ),
      ),
      colorScheme: ColorScheme(
        primary: primeDarkColor,
        onPrimary: Color(0xFFFACC1D),
        onSurface: Colors.white,
          brightness: Brightness.light,
          secondary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.white,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: primeDarkColor,
          surface: Colors.white

      ),
      cardTheme: CardTheme (
        color: Colors.white,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
        margin: EdgeInsets.symmetric(vertical: 40,horizontal: 25),
      )
  );
}