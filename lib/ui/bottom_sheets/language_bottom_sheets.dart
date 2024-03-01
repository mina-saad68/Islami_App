import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheets extends StatelessWidget {
  LanguageBottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                provider.changeLang('ar');
              },
              child: Text(
                AppLocalizations.of(context)!.arabic,
                style: GoogleFonts.elMessiri(
                  textStyle: TextStyle(
                      color: provider.languageCode == 'ar'
                          ? Theme.of(context).primaryColor
                          : Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            provider.languageCode == 'ar'
                ? Icon(Icons.done_outline_outlined,
                    color: Theme.of(context).primaryColor)
                : SizedBox()
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                provider.changeLang('en');
              },
              child: Text(
                AppLocalizations.of(context)!.english,
                style: GoogleFonts.elMessiri(
                  textStyle: TextStyle(
                      color: provider.languageCode == 'en'
                          ? Theme.of(context).primaryColor: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            provider.languageCode == 'en'
                ? Icon(Icons.done_outline_outlined,
                    color: Theme.of(context).primaryColor) : SizedBox()
          ],
        ),
      ],
    );
  }
}
