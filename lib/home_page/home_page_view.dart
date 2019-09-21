import 'package:flutter/material.dart';
import 'package:bizzt_app/home_page/home_page_viewmodel.dart';
import 'package:bizzt_app/shared_widgets/fab_menu.dart';
import 'package:bizzt_app/shared_widgets/bottom_bar.dart';
import 'package:bizzt_app/shared_widgets/promotion_services.dart';
import 'package:bizzt_app/shared_widgets/business_services.dart';
import 'package:bizzt_app/shared_widgets/intro_widget.dart';
import 'package:bizzt_app/shared_widgets/advantages_section.dart';
import 'package:bizzt_app/price_page/price_page.dart';
import 'dart:async';

class HomePageView extends HomePageViewModel {
  int _currentIndex = 0;
  final int _primaryColor = 0xff6ec1e4;
  final PageController controller = PageController();
  final StreamController<int> _streamController = StreamController<int>();
  final List<Widget> _barItemsList = [
    IntroSection(),
    PromotionServicesSection(),
    BusinessServicesSection(),
    AdvantagesSection()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        _onNavBarItemTapped,
        bottomIndexStream: _streamController.stream,
      ),
      body: Stack(
        children: <Widget>[
          PageView(
            children: _barItemsList,
            scrollDirection: Axis.horizontal,
            pageSnapping: true,
            physics: BouncingScrollPhysics(),
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                _streamController.add(index);
              });
            },
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: FabMenu()
                      .setLocation(MenuLocation.BottomRight)
                      .addCenterFab(Icons.menu)
                      .addActionFab(Icons.people,
                          color: _primaryColor,
                      heroTag: 'people',
                      onPressed: () {
                print('Clicked info icon');
              }).addActionFab(Icons.trending_up,
                          color: _primaryColor,
                           heroTag: 'stats',
                           onPressed: () {
                print('Clicked info icon');
              }).addActionFab(Icons.attach_money,
                          color: _primaryColor,
                          heroTag: 'price',
                          onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PricePage()));
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
      controller.animateToPage(index,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
      print('tapped index $index');
    });
  }
}
