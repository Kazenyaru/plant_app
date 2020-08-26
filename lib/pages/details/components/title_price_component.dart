import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleAndPriceComponent extends StatelessWidget {
  const TitleAndPriceComponent({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Constants.textColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    fontSize: 20,
                    color: Constants.primaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Constants.primaryColor),
          )
        ],
      ),
    );
  }
}