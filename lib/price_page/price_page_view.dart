import 'package:flutter/material.dart';
import 'package:bizzt_app/price_page/price_page_viewmodel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PricePageView extends PricePageViewModel {
  int _currentPage = 0;
  List colorList = [0xff6ec1e4, 0xffFFFF99, 0xff00FF00];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
              height: 400.0,
              initialPage: 0,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              items: colorList.map((color) {
                return Builder(builder: (BuildContext context) {
                  return Container(color: Color(color));
                });
              }).toList()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(colorList, (index, color) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _currentPage == index ? Colors.redAccent : Colors.green,
                ),
              );
            }),
          )
        ],
      ),
    );
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
}
