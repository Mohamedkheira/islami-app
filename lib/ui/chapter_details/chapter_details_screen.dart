import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalmi/model/quran/quran_details_args.dart';
import 'package:isalmi/ui/default_screen.dart';

import 'chapter_contant.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'Chapter-Name';

  const ChapterDetailsScreen({super.key});

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
    List<String>  verses = [];
  @override
  Widget build(BuildContext context) {
    QuranDetailsArgs args =
        (ModalRoute.of(context)?.settings.arguments) as QuranDetailsArgs;
    // read file
    // show data --> 2s // 10s blocking code -->  data --> big data
    // nun-blocking code --> Async --> generate form blocking code to nun blocking code
    if(verses.isEmpty) {
      readFileData(args.index);
    }
    return DefaultScreen(
      body: Scaffold(
        body: Card(
          margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          color: Theme.of(context).colorScheme.onPrimary,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      args.chapterName,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.play_circle_fill),
                    ),
                  ],
                ),
                SizedBox(height: 9),
                Divider(indent: 42, endIndent: 42),
                SizedBox(height: 24),
                verses.isNotEmpty ? Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                     return ChapterContent(
                       chapterName: verses[index],
                       index: index,
                     );
                    },
                    separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).colorScheme.primary,
                      margin: EdgeInsets.symmetric(horizontal: 64,vertical: 5),
                      width: double.infinity,
                      height: 2,
                    ),
                    itemCount: verses.length,
                  ),
                ): CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void readFileData(int fileIndex) async {
    String fileContent = await rootBundle.loadString(
      'assets/files/${fileIndex + 1}.txt',
    );
      List<String> lines = fileContent.trim().split('\n');
      setState(() {
        verses = lines;
      });
      print(fileContent);
  }
}
