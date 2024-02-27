import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/ui/home/Home_screen.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_screen.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_widget.dart';
import 'package:islami_app/ui/home/quran_tab/quran_screen.dart';
import 'package:islami_app/ui/home/quran_tab/sura_widget.dart';
import 'package:islami_app/ui/home/radio_tab/radio_screen.dart';
import 'package:islami_app/ui/home/sebha_tab/sebha_screen.dart';
import 'package:islami_app/ui/home/settings_tab/settings_tab.dart';

void main (){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),

        ),
        cardTheme: CardTheme(
          color: Colors.white,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
          margin: EdgeInsets.symmetric(vertical: 40,horizontal: 25),
        )
      ),



      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        QuranScreen.routeName: (context) => QuranScreen(),
        HadethScreen.routeName: (context) => HadethScreen(),
        RadioScreen.routeName: (context) => RadioScreen(),
        SebhaScreen.routeName: (context) => SebhaScreen(),
        Settings_Screen.routeName: (context) => Settings_Screen(),
        SuraWidget.routeName: (context) => SuraWidget(),
        HadethWidget.routeName: (context) => HadethWidget(),
      },

    );


  }

}