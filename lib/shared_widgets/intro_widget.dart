import 'package:flutter/material.dart';
import 'package:bizzt_app/utils/text_utils.dart';

class IntroSection extends StatelessWidget {
  final int _primaryColor = 0xff6ec1e4;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Image.asset('assets/ic_bizzt.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Bizzt - כל מה שעסק צריך בלחיצת כפתור!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 150.0,
                height: 50.0,
                margin: EdgeInsets.only(top: 40.0),
                child: RaisedButton(
                    child: Text(
                      'CRM מערכת',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Color(_primaryColor),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0),
                child: Text(
                  '"עם bizzt תוכלו לדחוף את העסק קדימה"',
                  style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Shlomo Rosh',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  '- CEO -',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                    'assets/ic_quote.png',
                    color: Color(_primaryColor),
                  )),
              Container(
                padding: EdgeInsets.only(
                    top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
                margin: EdgeInsets.only(
                    top: 20.0, right: 20.0, left: 20.0, bottom: 70.0),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: -5.0,
                          blurRadius: 15.0)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Text(
                  TextUtils.ceoWord,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0,
                      color: Color(_primaryColor)),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
