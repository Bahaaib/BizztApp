import 'package:flutter/material.dart';
import 'package:bizzt_app/home_page/home_page_viewmodel.dart';
import 'package:bizzt_app/shared_widgets/fab_menu.dart';
import 'package:bizzt_app/shared_widgets/bottom_bar.dart';

class HomePageView extends HomePageViewModel {
  int _currentIndex = 0;
  final int _primaryColor = 0xff6ec1e4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(_onNavBarItemTapped),
      body: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: FabMenu()
                      .setLocation(MenuLocation.BottomRight)
                      .addCenterFab(Icons.menu)
                      .addActionFab(Icons.info, color: _primaryColor,
                          onPressed: () {
                print('Clicked info icon');
              }).addActionFab(Icons.info, color: _primaryColor, onPressed: () {
                print('Clicked info icon');
              }).addActionFab(Icons.check_circle, color: _primaryColor,
                          onPressed: () {
                print('Clicked check icon');
              }))
            ],
          )
        ],
      ),
    );
  }

  void _onNavBarItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      print('tapped index $index');
    });
  }
}
