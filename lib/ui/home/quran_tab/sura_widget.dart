import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/quran_tab/sura_model.dart';

class SuraWidget extends StatefulWidget {
  static const routeName = 'suraWidget';

  SuraWidget({super.key});

  @override
  State<SuraWidget> createState() => _SuraWidgetState();
}

class _SuraWidgetState extends State<SuraWidget> {
  List<String> versesLines = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;

    if (versesLines.isEmpty) {
      loadSuraFile(suraModel.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_bg.png'))),
        child: Scaffold(
          appBar: AppBar(
            title: Text(suraModel.suraTitle),
          ),
          body: versesLines.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Expanded(
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(versesLines[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),textAlign: TextAlign.center,);
                      },
                      itemCount: versesLines.length,
                                      ),
                    ),
                  )),
        ));
  }

  loadSuraFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> suraLines = sura.trim().split('\n');
    versesLines = suraLines;
    setState(() {});
  }
}
