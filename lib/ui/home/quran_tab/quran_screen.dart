import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/ui/home/quran_tab/sura_model.dart';
import 'package:islami_app/ui/home/quran_tab/sura_widget.dart';

class QuranScreen extends StatelessWidget {
  static const String routeName = 'quranScreen';

  QuranScreen({super.key});

  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {



    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            'assets/images/ic_moshaf.png',
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 2,
          ),
          Text(
            'suraName',
            style: GoogleFonts.elMessiri(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 2,
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return InkWell(

                      onTap: () {
                        Navigator.pushNamed(context, SuraWidget.routeName,arguments: SuraModel(suraNames[index], index));
                      },
                      child: Text(
                        suraNames[index],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.elMessiri(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                        thickness: 1,
                        color: Theme.of(context).primaryColor,
                        indent: 35,
                        endIndent: 35,
                      ),
                  itemCount: suraNames.length))
        ],
      ),
    );
  }
}
