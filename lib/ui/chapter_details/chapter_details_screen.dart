import 'package:flutter/material.dart';
import 'package:isalmi/model/quran/quran_details_args.dart';
import 'package:isalmi/ui/default_screen.dart';


class ChapterDetailsScreen extends StatelessWidget {
  static const String routeName = 'Chapter-Name';

  const ChapterDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = (ModalRoute.of(context)?.settings.arguments) as QuranDetailsArgs;
    return DefaultScreen(body: Scaffold(
      body: Card(
        margin: EdgeInsets.symmetric(vertical: 64,horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12)
        ),
        color: Theme.of(context).colorScheme.onPrimary,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.chapterName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  IconButton(onPressed: (){},
                      icon: Icon(
                        Icons.play_circle_fill,

                      ))
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Divider(
                indent: 42,
                endIndent: 42,
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text('Details', textAlign: TextAlign.center,),
                  itemCount: 114,
                ),
              ),
            ],
          ),
        )
      ),
    ));
  }
}
