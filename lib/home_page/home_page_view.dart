import 'package:flutter/material.dart';
import 'package:bizzt_app/home_page/home_page_viewmodel.dart';
import 'package:bizzt_app/shared_widgets/fab_menu.dart';
import 'package:bizzt_app/shared_widgets/bottom_bar.dart';
import 'package:bizzt_app/shared_widgets/promotion_services.dart';
import 'package:bizzt_app/shared_widgets/business_services.dart';
import 'package:bizzt_app/shared_widgets/intro_widget.dart';
import 'package:bizzt_app/shared_widgets/advantages_section.dart';

class HomePageView extends HomePageViewModel {
  int _currentIndex = 0;
  final int _primaryColor = 0xff6ec1e4;
  final List<Widget> _barItemsList = [
    IntroSection(),
    PromotionServicesSection(),
    BusinessServicesSection(),
    AdvantagesSection()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(_onNavBarItemTapped),
      body: Stack(
        children: <Widget>[
          _barItemsList[_currentIndex],
          Row(
            children: <Widget>[
              Expanded(
                  child: FabMenu()
                      .setLocation(MenuLocation.BottomRight)
                      .addCenterFab(Icons.menu)
                      .addActionFab(Icons.people, color: _primaryColor,
                          onPressed: () {
                print('Clicked info icon');
              }).addActionFab(Icons.trending_up, color: _primaryColor,
                          onPressed: () {
                print('Clicked info icon');
              }).addActionFab(Icons.attach_money, color: _primaryColor,
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
