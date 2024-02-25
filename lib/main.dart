import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/Home_screen.dart';

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

        )
      ),



      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },

    );


  }

}