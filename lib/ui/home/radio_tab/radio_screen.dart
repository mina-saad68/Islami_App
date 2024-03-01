import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class RadioScreen extends StatelessWidget {
  static const String routeName = 'radioScreen';

  const RadioScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      margin: EdgeInsets.only(top: 125),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/radio.png',fit: BoxFit.fill,),

          SizedBox(
            height: 45,
          ),
          Text(AppLocalizations.of(context)!.aza3etElQuran,style: GoogleFonts.elMessiri(
            textStyle: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.w600),
          ),),
          SizedBox(
            height: 45,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.skip_previous,color: Theme.of(context).primaryColor,size: 45,),
              Icon(Icons.stop,color: Theme.of(context).primaryColor,size: 45,),
              Icon(Icons.skip_next,color: Theme.of(context).primaryColor,size: 45,),

            ],
          )

        ],
      ),

    );
  }
}
