import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/pages/details_page.dart';

class RecomendPlantsComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantsCardComponent(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(),
                ),
              );
            }
          ),
          RecomendPlantsCardComponent(
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Russia',
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(),
                ),
              );
            }
          ),
          RecomendPlantsCardComponent(
            image: 'assets/images/image_3.png',
            title: 'Angelic',
            country: 'Russia',
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}

class RecomendPlantsCardComponent extends StatelessWidget {
  const RecomendPlantsCardComponent({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
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
          bottom: Constants.defaultPadding * 2.5,
        ),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(Constants.defaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Constants.primaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: Constants.primaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Constants.primaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
