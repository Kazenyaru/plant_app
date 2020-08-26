import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleMoreComponent extends StatelessWidget {
  final String title;
  final Function press;

  TitleMoreComponent({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: Row(
        children: [
          // TitleUnderLine(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Constants.primaryColor,
            onPressed: press,
            child: Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
