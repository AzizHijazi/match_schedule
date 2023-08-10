import 'package:flutter/material.dart';
import 'package:match_schedule/screens/settings.dart';

import '../models/b_n_item.dart';
import 'leagues.dart';
import 'home.dart';
import 'news.dart';
import 'notifications.dart';

class BN extends StatefulWidget {
  const BN({super.key});

  @override
  State<BN> createState() => _BNState();
}

class _BNState extends State<BN> {

  int _currentIndex = 0;
  List<BNItem> _items = <BNItem>[
    BNItem(Home(), 'Home'),
    BNItem(News(), 'News'),
    BNItem(Leagues(), 'Leagues'),
    BNItem(Settings(), 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(_items[_currentIndex].title),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/notifications'),
            icon: const Icon(Icons.notifications),
          ),
        ],
        backgroundColor: Color(0xFF1D267D),
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
      ),

      body: _items[_currentIndex].widget,

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() => _currentIndex = index);
        },
        elevation: 10,
        fixedColor: const Color(0xFF1D267D),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: [
           BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: 'News',
              icon: Icon(Icons.newspaper)
          ),
          BottomNavigationBarItem(
              label: 'Leagues',
              icon: Icon(Icons.category_outlined)
          ),
          BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings)
          ),
        ],
      ),

    );
  }
}
