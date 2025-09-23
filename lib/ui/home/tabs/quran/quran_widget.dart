import 'package:flutter/material.dart';
import 'package:isalmi/model/quran/quran_details_args.dart';

import '../../../chapter_details/chapter_details_screen.dart';

class QuranWidget extends StatelessWidget {
  final String chapterName;
  final int numberVerses;
  final int index;
  const QuranWidget({super.key, required this.chapterName,required this.numberVerses,required this.index });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, ChapterDetailsScreen.routeName,
            arguments: QuranDetailsArgs(chapterName: chapterName, index: index),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Text(chapterName,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 3,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            Expanded(
              child: Text(numberVerses.toString(),
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
