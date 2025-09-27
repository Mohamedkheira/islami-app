import 'package:flutter/material.dart';

class LanguageButtonSheet extends StatelessWidget {
  const LanguageButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          getSelectedItem(context,text: 'English'),
          getUnSelectedItem(context,text: 'Arabic')
        ],
      ),
    );
  }


  Widget getSelectedItem(BuildContext context, {required String text}){
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 25),
        ),
        Icon(Icons.check,color: Theme.of(context).colorScheme.secondary,)
      ],
    );
  }
  Widget getUnSelectedItem(BuildContext context, {required String text}){
   return Text(
     text,
     style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
   );
  }
}
