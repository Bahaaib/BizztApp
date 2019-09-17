import 'package:flutter/material.dart';
import 'package:bizzt_app/utils/text_utils.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return OrientationBuilder(
        builder: (context, orientation) => ListView(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 50.0),
                        child: Text(
                          'היתרונות שלנו',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/ic_cloud.png'),
                            Text(
                              'אחסון',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25.0),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 20.0,
                                    left: _width < 400.0 ? 20.0 : 0.0,
                                    right: _width < 400.0 ? 20.0 : 0.0),
                                child: Text(
                                  TextUtils.advantages[0],
                                  textAlign: TextAlign.center,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/ic_security.png',
                              color: Color(0xFF7FABDA),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: Text(
                                'אבטחה',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 20.0,
                                    right: 20.0,
                                    left: 20.0,
                                    bottom: 20.0),
                                child: Text(
                                  TextUtils.advantages[1],
                                  textAlign: TextAlign.center,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/ic_support.png',
                                color: Color(0xFF7FABDA)),
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: Text(
                                'תמיכה',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 20.0,
                                    right: 20.0,
                                    left: 20.0,
                                    bottom: 20.0),
                                child: Text(
                                  TextUtils.advantages[1],
                                  textAlign: TextAlign.center,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/ic_service.png',
                                color: Color(0xFF7FABDA)),
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: Text(
                                'שירות',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 20.0,
                                    right: 20.0,
                                    left: 20.0,
                                    bottom: 80.0),
                                child: Text(
                                  TextUtils.advantages[1],
                                  textAlign: TextAlign.center,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ));
  }
}
