import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName  = 'home screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/main_bg.png'),)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('islami',),
        ),

        bottomNavigationBar:  BottomNavigationBar(
            items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png')),label: 'quran',backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Path 1.png')),label: 'hadeth'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),label: 'sebha'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label: 'radio'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),
             ]
        ),
        
      ),
    );
  }
}
