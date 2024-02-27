import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_model.dart';

class HadethWidget extends StatelessWidget {

  static const String routeName = 'hadethWidget';
  const HadethWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var hadethModel = ModalRoute.of(context)!.settings.arguments as HadethModel;

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_bg.png'))),
        child: Scaffold(
          appBar: AppBar(
            title: Text(hadethModel.title),
          ),
          body: hadethModel.content.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Card(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(hadethModel.content[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),textAlign: TextAlign.center,);
                    },
                     itemCount: hadethModel.content.length,
                   ),
                 ),
               ),
        ));
  }
}
