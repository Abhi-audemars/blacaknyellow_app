import 'package:blacaknyellow_app/screens/competitions_screen.dart';
import 'package:blacaknyellow_app/screens/home_screen.dart';
import 'package:blacaknyellow_app/screens/learn_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    const HomeScreen(),
    const LearnScreen(),
    const CompetitionsScreen(),
  ];
  double bottomBarWidth = 32;
  double bottomBarBorderWidth = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        onTap: updatePage,
        backgroundColor: Colors.deepPurple[300],
        iconSize: 30,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0 ? Colors.white : Colors.transparent,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Image.asset('assets/icons/h.png', height: 30, width: 30),
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1 ? Colors.white : Colors.transparent,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child:
                  Image.asset('assets/icons/book.png', height: 30, width: 30),
            ),
            label: 'LEARN',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2 ? Colors.white : Colors.transparent,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child:
                  Image.asset('assets/icons/trophy.png', height: 30, width: 30),
            ),
            label: 'COMPETITIONS',
          )
        ],
      ),
    );
  }
}
