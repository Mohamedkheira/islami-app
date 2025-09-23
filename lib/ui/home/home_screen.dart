import 'package:flutter/material.dart';
import 'package:isalmi/ui/default_screen.dart';
import 'package:isalmi/ui/home/tabs/hadeth/hadeth_tab.dart';
import 'package:isalmi/ui/home/tabs/quran/quran_tab.dart';
import 'package:isalmi/ui/home/tabs/radio/radio_tab.dart';
import 'package:isalmi/ui/home/tabs/sebha/sebha_tab.dart';

import '../../components/bottom_nav_item.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-Screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
  ];
  int selectIndex =0;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(body: Scaffold(
      body: tabs[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        currentIndex: selectIndex,
        items: [
          BottomNavItem(
            iconPath: 'quran_icn.png',
            title: 'Quran',
            backgroundColor: Theme.of(context).colorScheme.primary
          ),
          BottomNavItem(
            iconPath: 'hadeth.png',
            title: 'hadeth',
            backgroundColor: Theme.of(context).colorScheme.primary
          ),
          BottomNavItem(
            iconPath: 'sebha.png',
            title: 'sebha',
            backgroundColor: Theme.of(context).colorScheme.primary
          ),
          BottomNavItem(
            iconPath: 'radio.png',
            title: 'radio',
            backgroundColor: Theme.of(context).colorScheme.primary
          ),
        ],
      ),
    )
    );
  }
}
    //   Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage(getImage('lightbackground.jpg')),
    //
    //       fit: BoxFit.fill,
    //     ),
    //   ),
    //
    //   child: Scaffold(
    //     appBar: AppBar(title: Text('Islami')),
    //
    //
    //   ),
    // );
