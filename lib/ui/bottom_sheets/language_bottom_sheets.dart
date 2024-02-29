import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageBottomSheets extends StatelessWidget {

   LanguageBottomSheets({super.key});

   bool isEnglish = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Arabic',style: GoogleFonts.elMessiri(
              textStyle: TextStyle(color:isEnglish? Theme.of(context).primaryColor:Colors.black, fontSize: 24,fontWeight: FontWeight.w600),
            ),),
            isEnglish ? Icon(Icons.done_outline_outlined,color: Theme.of(context).primaryColor):SizedBox()
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('English',style: GoogleFonts.elMessiri(
              textStyle: TextStyle(color:isEnglish? Colors.black:Theme.of(context).primaryColor, fontSize: 24,fontWeight: FontWeight.w600),
            ),),
            isEnglish?SizedBox():Icon(Icons.done_outline_outlined,color: Theme.of(context).primaryColor)
          ],
        ),


      ],
    );
  }
}
