import 'package:flutter/material.dart';
import 'package:plant_app/pages/details/components/image_icons_component.dart';
import 'package:plant_app/pages/details/components/title_price_component.dart';
import 'package:plant_app/constants.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageAndIconsComponent(size: size),
            TitleAndPriceComponent(
              title: "Angelica",
              country: "Russia",
              price: 440,
            ),
            SizedBox(height: Constants.defaultPadding),
            Row(
              children: <Widget>[
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    color: Constants.primaryColor,
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("Description"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
