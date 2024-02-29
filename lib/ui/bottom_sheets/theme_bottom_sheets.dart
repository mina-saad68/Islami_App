import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeBottomSheets extends StatelessWidget {
   ThemeBottomSheets({super.key});

   bool islight = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Dark',style: GoogleFonts.elMessiri(
              textStyle: TextStyle(color:islight? Theme.of(context).primaryColor:Colors.black, fontSize: 24,fontWeight: FontWeight.w600),
            ),),
            islight ? Icon(Icons.done_outline_outlined,color: Theme.of(context).primaryColor):SizedBox()
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Light',style: GoogleFonts.elMessiri(
              textStyle: TextStyle(color:islight? Colors.black:Theme.of(context).primaryColor, fontSize: 24,fontWeight: FontWeight.w600),
            ),),
            islight?SizedBox():Icon(Icons.done_outline_outlined,color: Theme.of(context).primaryColor)
          ],
        ),


      ],
    );
  }
}
