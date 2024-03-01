import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_screen.dart';
import 'package:islami_app/ui/home/quran_tab/quran_screen.dart';
import 'package:islami_app/ui/home/radio_tab/radio_screen.dart';
import 'package:islami_app/ui/home/sebha_tab/sebha_screen.dart';
import 'package:islami_app/ui/home/settings_tab/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'home screen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selecteditem = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/main_bg.png'),
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.appName,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selecteditem,
            onTap: (value) {
              selecteditem = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/moshaf_blue.png'),
                ),
                label: AppLocalizations.of(context)!.quran,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/Path 1.png')),
                  label: AppLocalizations.of(context)!.ahadeth),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                  label: AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                  label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.settings), label: AppLocalizations.of(context)!.settings),
            ]),
        body: tabs[selecteditem],
      ),
    );
  }
  List<Widget>tabs = [
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    Settings_Screen(),
  ];
}
