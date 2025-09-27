import 'package:flutter/material.dart';

class ChapterContent extends StatelessWidget {
  final String chapterName;
  final int index;
  const ChapterContent({super.key,required this.chapterName,required this.index});

  @override
  Widget build(BuildContext context) {
    return  Text('${chapterName.trim()} {${index+1}}',
      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      locale: Locale('ar'),
    );
  }
}
