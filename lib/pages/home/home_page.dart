import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/pages/home/components/featured_plants_component.dart';
import 'package:plant_app/pages/home/components/header_component.dart';
import 'package:plant_app/pages/home/components/recomend_plants_component.dart';
import 'package:plant_app/pages/home/components/title_more_component.dart';
import 'package:plant_app/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderComponent(size: size),
            TitleMoreComponent(title: "Recomended", press: () {}),
            RecomendPlantsComponent(),
            TitleMoreComponent(title: "Featured Plants", press: () {}),
            FeaturedPlantsComponent(),
            SizedBox(height: Constants.defaultPadding),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavbar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }

  Container buildBottomNavbar() {
    return Container(
      padding: EdgeInsets.only(
        left: Constants.defaultPadding * 2,
        right: Constants.defaultPadding * 2,
        bottom: Constants.defaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: Constants.primaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
