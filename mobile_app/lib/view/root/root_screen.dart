import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/view/briefcase/briefcase_screen.dart';
import 'package:mobile_app/view/home/screens/home_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    final List<Widget> _widgetOptions = <Widget>[
      const HomeScreen(),
      const BriefcaseScreen(),
    ];

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.briefcase),
            label: 'Портфель',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return _widgetOptions[index];
          },
        );
      },
    );
    ;
  }
}
