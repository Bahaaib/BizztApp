import 'package:flutter/material.dart';
import 'package:bizzt_app/price_page/price_page_viewmodel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bizzt_app/utils/text_utils.dart';

class PricePageView extends PricePageViewModel {
  int _currentPage = 0;
  List colorList = [0xff6ec1e4, 0xffFFFF99, 0xff00FF00];
  final int _primaryColor = 0xff6ec1e4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
              height: 540.0,
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
                  return _buildListItems(context, _currentPage, 400.0);
                });
              }).toList()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _map<Widget>(colorList, (index, color) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index
                      ? Color(_primaryColor)
                      : Colors.grey,
                ),
              );
            }),
          )
        ],
      ),
    );
  }

  List<T> _map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  Widget _buildListItems(BuildContext context, int position, double width) {
    return Center(
        child: Container(
      margin: EdgeInsets.only(bottom: 13.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 15.0, spreadRadius: -5.0)
      ]),
      child: Column(
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                TextUtils.priceTitles[position],
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            height: 80.0,
            decoration: BoxDecoration(color: Color(_primaryColor)),
          ),
          Container(
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    '₪',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
                  child: Text(
                    TextUtils.priceValues[position],
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'החל מ-',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
            height: 80.0,
          ),
          ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              itemBuilder: (context, position) =>
                  _buildInnerListItems(context, _currentPage, width)),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 30),
            child: OutlineButton(
                borderSide: BorderSide(color: Color(_primaryColor), width: 2.0),
                child: Text(
                  'איש קשר',
                  style: TextStyle(color: Color(_primaryColor)),
                ),
                color: Colors.white,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
          ))
        ],
      ),
    ));
  }

  Widget _buildInnerListItems(
      BuildContext context, int position, double width) {
    return Center(
      child: Column(
          children: TextUtils.priceContentLists[position]
              .map((text) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, right: 5.0),
                        child: Text(text),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Icon(
                          Icons.check_circle,
                          color: Color(_primaryColor),
                        ),
                      )
                    ],
                  ))
              .toList()),
    );
  }
}
