import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  BottomNavBar(Function onItemTapped) {
    this._onItemTapped = onItemTapped;
  }

  Function _onItemTapped;

  @override
  BottomNavBarState createState() => BottomNavBarState(_onItemTapped);
}

class BottomNavBarState extends State<BottomNavBar> {
  BottomNavBarState(Function onItemTapped) {
    this._onItemTapped = onItemTapped;
  }

  int _currentIndex = 0;
  Function _onItemTapped;
  final int _primaryColor = 0xff6ec1e4;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.alternate_email,
            ),
            title: Text(
              'Promotion Services',
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
            ),
            title: Text(
              'Buisness Services',
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.center_focus_strong,
            ),
            title: Text(
              'Advantages',
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            title: Text(
              'Our Customers',
            ))
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        _onItemTapped(index);
        setState(() {
          _currentIndex = index;
        });
      },
      selectedItemColor: Color(_primaryColor),
      unselectedItemColor: Colors.grey,
      elevation: 10.0,
    );
  }
}
