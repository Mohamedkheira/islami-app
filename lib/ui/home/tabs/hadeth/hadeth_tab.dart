import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalmi/model/hadeth/hadeth_data.dart';

import '../../../../ui_utiles.dart';
import 'hadeth_widget.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth =[];
  @override
  void initState() {
    super.initState();
    readHadethData();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Image.asset(
          getImage('hadeth_header.png'),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            border: BorderDirectional(
              top: BorderSide(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                width: 3,
              ),
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                width: 3,
              ),
            ),
          ),
          child: Text(
            appTranslate(context).alaHadeth,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
         Expanded(
          child: allHadeth.isNotEmpty ? ListView.separated(
              itemBuilder: (context, index) {
                return HadethWidget(hadeth: allHadeth[index],);
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: allHadeth.length): Center(
            child: CircularProgressIndicator(color: Theme.of(context).colorScheme.onPrimaryContainer,),
          ),
        )
      ],
    );
  }





  void readHadethData() async {
   String fileContent = await rootBundle.loadString("assets/files/ahadeth.txt");

   List<String> separatedAlHadeth = fileContent.split('#');
setState(() {

   for(var i =0; i<separatedAlHadeth.length;i++){
     String singleHadeth = separatedAlHadeth[i];
     List<String> lines = singleHadeth.trim().split('\n');
     String title = lines[0];
     lines.removeAt(0);
     String content = lines.join();
     Hadeth hadeth = Hadeth(title: title, content: content);
     allHadeth.add(hadeth);
   }
});
  }

}