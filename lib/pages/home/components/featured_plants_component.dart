import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedPlantsComponent extends StatelessWidget {
  const FeaturedPlantsComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturePlantCardComponent(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantCardComponent(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCardComponent extends StatelessWidget {
  const FeaturePlantCardComponent({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: Constants.defaultPadding,
          top: Constants.defaultPadding / 2,
          bottom: Constants.defaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}