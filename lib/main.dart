import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/themes/my_theme.dart';
import 'package:islami_app/ui/home/Home_screen.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_screen.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_widget.dart';
import 'package:islami_app/ui/home/quran_tab/quran_screen.dart';
import 'package:islami_app/ui/home/quran_tab/sura_widget.dart';
import 'package:islami_app/ui/home/radio_tab/radio_screen.dart';
import 'package:islami_app/ui/home/sebha_tab/sebha_screen.dart';
import 'package:islami_app/ui/home/settings_tab/settings_tab.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


void main (){
  runApp(ChangeNotifierProvider<MyProvider>(

      create: (BuildContext context) {
        return MyProvider();
      },
      child: MyApp()));
}


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var provider  = Provider.of<MyProvider>(context);

    return MaterialApp(

      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(provider.languageCode),

      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      initialRoute: HomeScreen.routeName,
      themeMode: provider.myTheme,
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