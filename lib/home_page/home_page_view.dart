import 'package:flutter/material.dart';
import 'package:bizzt_app/home_page/home_page_viewmodel.dart';
import 'package:bizzt_app/shared_widgets/fab_menu.dart';

class HomePageView extends HomePageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
              child: FabMenu()
                  .setLocation(MenuLocation.BottomRight)
                  .addCenterFab(Icons.menu)
                  .addActionFab(Icons.info, onPressed: () {
            print('Clicked info icon');
          }).addActionFab(Icons.check_circle, onPressed: () {
            print('Clicked check icon');
          }))
        ],
      ),
    );
  }
}
