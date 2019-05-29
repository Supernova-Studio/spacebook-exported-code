
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:spacebook/screens/messages_widget.dart';
import 'package:spacebook/screens/profile_widget.dart';
import 'package:spacebook/screens/timeline_widget.dart';


class TabBarWidget extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _TabBarWidgetState();
}


class _TabBarWidgetState extends State<TabBarWidget> {
  List<Widget> _tabWidgets = [
    TimelineWidget(),
    MessagesWidget(),
    ProfileWidget(),
  ];
  int _currentIndex = 0;
  
  void _onTabChanged(int index) => this.setState(() => _currentIndex = index);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: _tabWidgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color.fromARGB(255, 140, 28, 140),
        currentIndex: _currentIndex,
        onTap: (index) => this._onTabChanged(index),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/active-icon-7.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "News",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "",
              ),
              textAlign: TextAlign.left,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/active-icon-3.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "Messages",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "",
              ),
              textAlign: TextAlign.left,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/active-icon-6.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "",
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}