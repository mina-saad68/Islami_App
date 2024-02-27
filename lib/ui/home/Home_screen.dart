import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_screen.dart';
import 'package:islami_app/ui/home/quran_tab/quran_screen.dart';
import 'package:islami_app/ui/home/radio_tab/radio_screen.dart';
import 'package:islami_app/ui/home/sebha_tab/sebha_screen.dart';
import 'package:islami_app/ui/home/settings_tab/settings_tab.dart';

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
            'islami',
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
                label: 'quran',
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/Path 1.png')),
                  label: 'hadeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                  label: 'sebha'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'radio'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.settings), label: 'settings'),
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
