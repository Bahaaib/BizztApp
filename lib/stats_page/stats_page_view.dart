import 'package:flutter/material.dart';
import 'package:bizzt_app/stats_page/stats_page_viewmodel.dart';
import 'package:bizzt_app/utils/text_utils.dart';

class StatsPageView extends StatsPageViewModel {
  final int _primaryColor = 0xff6ec1e4;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: OrientationBuilder(
          builder: (context, orientation) => ListView(
                children: <Widget>[
                  Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 50.0),
                          child: Text(
                            'במספרים' + ' BIZZT',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '64',
                                style: TextStyle(
                                    color: Color(_primaryColor),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 20.0,
                                      left: _width < 400.0 ? 20.0 : 0.0,
                                      right: _width < 400.0 ? 20.0 : 0.0),
                                  child: Text(
                                    TextUtils.stats[0],
                                    textAlign: TextAlign.center,
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 30.0),
                                child: Text(
                                  '+500',
                                  style: TextStyle(
                                      color: Color(_primaryColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40.0),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 10.0,
                                      right: 20.0,
                                      left: 20.0,
                                      bottom: 20.0),
                                  child: Text(
                                    TextUtils.stats[1],
                                    textAlign: TextAlign.center,
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 30.0),
                                child: Text(
                                  '22',
                                  style: TextStyle(
                                      color: Color(_primaryColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40.0),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 10.0,
                                      right: 20.0,
                                      left: 20.0,
                                      bottom: 20.0),
                                  child: Text(
                                    TextUtils.stats[2],
                                    textAlign: TextAlign.center,
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 30.0),
                                child: Text(
                                  '100%',
                                  style: TextStyle(
                                      color: Color(_primaryColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40.0),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 10.0,
                                      right: 20.0,
                                      left: 20.0,
                                      bottom: 80.0),
                                  child: Text(
                                    TextUtils.stats[3],
                                    textAlign: TextAlign.center,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
    );
  }
}
