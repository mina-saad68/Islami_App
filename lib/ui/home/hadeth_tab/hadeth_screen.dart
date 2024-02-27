import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_model.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_widget.dart';

class HadethScreen extends StatefulWidget {
  static const String routeName = 'hadethScreen';

   HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
   List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      loadAhadethfile();
    }
    return Column(
      children: [
        Image.asset('assets/images/ic_hadeth.png'),
        SizedBox(
          height: 8,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Text(
          'ahadeth',
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
        Expanded(child: ListView.separated(itemBuilder: (context, index) {
          return InkWell(

            onTap: () {
              Navigator.pushNamed(context,HadethWidget.routeName,arguments: allAhadeth[index]);
            },
            child: Text(allAhadeth[index].title,textAlign: TextAlign.center,style: GoogleFonts.elMessiri(
            textStyle: TextStyle(
            color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500),
            ),),
          );
        }, separatorBuilder: (context, index) => Divider(
          color: Theme.of(context).primaryColor,
          endIndent: 35,
          indent: 35,
          thickness: 2,
        ), itemCount: allAhadeth.length)),
      ],
    );
  }

  loadAhadethfile () async{
    String hadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadeth = hadeth.split('#');
    for(int i =0;i<ahadeth.length;i++){
      String hadethOne = ahadeth[i];
      List<String> hadethLins = hadethOne.trim().split('\n');
      String title= hadethLins[0];
      hadethLins.removeAt(0);
      List<String> content = hadethLins;
      HadethModel hadethModel = HadethModel(title, content);
      allAhadeth.add(hadethModel);
    }
    setState(() {

    });

  }
}
