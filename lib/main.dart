import 'package:flutter/material.dart';
import 'package:bizzt_app/home_page/home_page.dart';
import 'package:bizzt_app/price_page/price_page.dart';
import 'package:bizzt_app/stats_page/stats_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget _home = HomePage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: _home,
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => HomePage(),
          '/price': (BuildContext context) => PricePage(),
          '/stats': (BuildContext context) => StatsPage()
        });
  }
}
