import 'package:flutter/material.dart';
import 'package:isalmi/model/quran/quran_details_args.dart';
import 'package:isalmi/model/hadeth/hadeth_data.dart';
import 'package:isalmi/ui/hadeth_details/hadeth_details_screen.dart';

import '../../../chapter_details/chapter_details_screen.dart';

class HadethWidget extends StatelessWidget {
  final Hadeth hadeth;
  const HadethWidget({super.key, required this.hadeth,});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, HadethDetailsScreen.routeName,arguments: hadeth);
        },
        child: Text(hadeth.title,
       style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
