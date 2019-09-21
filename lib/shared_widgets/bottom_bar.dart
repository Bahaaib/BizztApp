import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  BottomNavBar(Function onItemTapped, {this.bottomIndexStream}) {
    this._onItemTapped = onItemTapped;
  }

  Function _onItemTapped;
  Stream<int> bottomIndexStream;

  @override
  BottomNavBarState createState() =>
      BottomNavBarState(_onItemTapped, bottomIndexStream: bottomIndexStream);
}

class BottomNavBarState extends State<BottomNavBar> {
  BottomNavBarState(Function onItemTapped, {this.bottomIndexStream}) {
    this._onItemTapped = onItemTapped;
  }

  Stream<int> bottomIndexStream;
  int _currentIndex = 0;
  Function _onItemTapped;
  final int _primaryColor = 0xff6ec1e4;

  @override
  void initState() {
    super.initState();
    widget.bottomIndexStream.listen((index) {
      _updateBottomIndex(index);
    });
  }

  void _updateBottomIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.alternate_email,
            ),
            title: Text(
              'Ad Services',
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
