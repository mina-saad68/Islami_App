import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/ui/bottom_sheets/language_bottom_sheets.dart';
import 'package:islami_app/ui/bottom_sheets/theme_bottom_sheets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';



class Settings_Screen extends StatelessWidget {
  static const String routeName = 'settingsScreen';

  const Settings_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 75,horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language,style: GoogleFonts.elMessiri(
            textStyle: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.w700),
          ),),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {

              showModalBottomSheet(
                isScrollControlled: true,
                context: context, builder: (context) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 45,horizontal: 20),
                  height: MediaQuery.of(context).size.height*0.6,
                  child: LanguageBottomSheets(),
                );
              },);

            },
            child: Container(
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor,width: 2,),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Text(provider.languageCode=='en'?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic,style: GoogleFonts.elMessiri(
                textStyle: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.w700),
              ),),
            ),
          ),

          SizedBox(
            height: 60,
          ),
          Text(AppLocalizations.of(context)!.theme,style: GoogleFonts.elMessiri(
            textStyle: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.w700),
          ),),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context, builder: (context) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 45,horizontal: 20),
                  height: MediaQuery.of(context).size.height*0.6,
                  child: ThemeBottomSheets(),
                );
              },);
            },
            child: Container(
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor,width: 2,),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Text(AppLocalizations.of(context)!.dark,style: GoogleFonts.elMessiri(
                textStyle: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.w700),
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
