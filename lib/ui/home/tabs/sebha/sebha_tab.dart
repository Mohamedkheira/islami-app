import 'package:flutter/material.dart';
import 'package:isalmi/ui_utiles.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;

  double angel = 0;

  List<String> tasbeh = [
    'Sobhan Allah',
    'Alhamed llah',
    'Allah Akber',
  ];
  int index = 0 ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 60),
                  child: Image.asset(getImage('head_of_seb7a.png')),
                ),
                GestureDetector(
                  onTap: (){
                    methodCounter();
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(top: 40),
                    child: Transform.rotate(
                        angle: angel,
                        child: Image.asset(getImage('body_of_seb7a.png'))),
                  ),
                ),
              ],
            ),
            Text(
              'Number of rosaries',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 26),
            Container(
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),

              child: Text(
                count.toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 22),
            Container(
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Text(
                tasbeh[index],
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSurface
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  methodCounter(){
    setState(() {

    angel +=10;
    if(count == 33){
      count = 0;
      if(index <tasbeh.length -1){
        index++;
      }else{
        index = 0;
      }
    }else{
      count++;
    }
    });
  }
}
