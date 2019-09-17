import 'package:flutter/material.dart';
import 'package:bizzt_app/shared_widgets/custom_tile.dart';
import 'package:bizzt_app/utils/text_utils.dart';

class PromotionServicesSection extends StatefulWidget {
  PromotionState createState() => PromotionState();
}

class PromotionState extends State<PromotionServicesSection> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      double _width = MediaQuery.of(context).size.width;

      return ListView.builder(
          itemCount: TextUtils.promotionServicesTitles.length,
          itemBuilder: (BuildContext context, int position) =>
              _buildListItems(context, position, _width));
    });
  }

  Widget _buildListItems(BuildContext context, int position, double width) {
    if (position == 0) {
      return Center(
        child: Padding(
          padding:
              EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0, bottom: 20.0),
          child: Text(
            'שירותי קידום, פרסום ובנייה של חברת BIZZT',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }
    return Center(
        child: Container(
            margin:
                EdgeInsets.only(top: 10.0, bottom: position == 8 ? 70.0 : 20.0),
            width: 380,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Stack(children: <Widget>[
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0)),
                      image: DecorationImage(
                          colorFilter:
                              ColorFilter.mode(Colors.grey, BlendMode.multiply),
                          image: AssetImage(
                              TextUtils.promotionServicesImages[position]),
                          fit: BoxFit.cover)),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 90.0),
                    child: Text(
                      TextUtils.promotionServicesTitles[position],
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 200.0),
                  child: CustomExpansionTile(
                    title: Text('פרטים'),
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: 12.0, right: 20.0, bottom: 10.0),
                          child: Text(
                            TextUtils.promotionServicesDetails[position],
                            textAlign: TextAlign.right,
                          ))
                    ],
                  ),
                )
              ]),
            )));
  }
}
