import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheets extends StatelessWidget {
  ThemeBottomSheets({super.key});

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
                provider.changeTheme(ThemeMode.light);
              },
              child: Text(
                AppLocalizations.of(context)!.light,
                style: GoogleFonts.elMessiri(
                  textStyle: TextStyle(
                      color: provider.myTheme == ThemeMode.light
                          ? Theme.of(context).primaryColor
                          : Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            provider.myTheme == ThemeMode.light
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
                provider.changeTheme(ThemeMode.dark);
              },
              child: Text(
                AppLocalizations.of(context)!.dark,
                style: GoogleFonts.elMessiri(
                  textStyle: TextStyle(
                      color: provider.myTheme == ThemeMode.light
                          ? Colors.black
                          : Theme.of(context).primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            provider.myTheme == ThemeMode.light
                ? SizedBox()
                : Icon(Icons.done_outline_outlined,
                    color: Theme.of(context).primaryColor)
          ],
        ),
      ],
    );
  }
}
