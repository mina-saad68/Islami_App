import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaScreen extends StatefulWidget {
  static const String routeName = 'sebhaScreen';

   SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
   int counter = 0;
   int index = 0;
   double angle =0;
   List<String> tesbehLines = [
    'سبحان الله',
    'الحمد لله',
    'الله واكبر',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Transform.rotate(
                angle: angle,
                child: Image.asset(
                  'assets/images/body_of_sebha.png',
                  height: 232,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              'assets/images/head_of_sebha.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'num of tasbeh',
          style: GoogleFonts.elMessiri(
            textStyle: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).primaryColor,
          ),
          child: Text('$counter',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Theme.of(context).primaryColor,
          ),
          child: InkWell(
            onTap: () {
              tasbeh();
            },
            child: Text(tesbehLines[index],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ]),
    );
  }

  void tasbeh (){
    if (counter < 33) {
      angle +=0.7;
      counter++;
    } else {
      if (index < 2) {
        index++;
        counter = 0;
      } else {
        index =0;
        counter = 0;
      }
    }
    setState(() {

    });


  }
}
