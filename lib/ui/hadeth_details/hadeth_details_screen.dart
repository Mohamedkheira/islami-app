import 'package:flutter/material.dart';
import 'package:isalmi/model/hadeth/hadeth_data.dart';
import 'package:isalmi/ui/default_screen.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "hadeth-details";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth args = (ModalRoute.of(context)?.settings.arguments) as Hadeth;
    return DefaultScreen(body: Scaffold(
      body: Card(
        margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                args.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 9),
              Divider(indent: 42, endIndent: 42),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Text(
                        args.content,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                        textDirection: TextDirection.rtl
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )
    ,);
  }
}
