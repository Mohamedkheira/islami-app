import 'package:flutter/material.dart';

import '../ui_utiles.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;
  DefaultScreen({required this.body,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(getImage('lightbackground.jpg')),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('Islami')),
        body: body,
      ),
    );
  }
}
