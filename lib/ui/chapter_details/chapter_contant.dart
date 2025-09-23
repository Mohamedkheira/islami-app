import 'package:flutter/material.dart';

class ChapterContent extends StatelessWidget {
  final String chapterName;
  final int index;
  const ChapterContent({super.key,required this.chapterName,required this.index});

  @override
  Widget build(BuildContext context) {
    return  Text('$chapterName {${index+1}}',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      locale: Locale('ar'),
    );
  }
}
