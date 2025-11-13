import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hm_prof/widgets/button_nav_bar.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.active});
  final int active;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Container(
      height: 88,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color.fromRGBO(160, 160, 160, 0.3), width: 1),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: heightScreen * (8 / 812),
            left: widthScreen * (7 / 375),
            child: ButtonNavBar(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              pathIcon: 'images/home.svg',
              title: 'Главная',
              isActive: active == 1 ? true : false,
            ),
          ),
          Positioned(
            top: heightScreen * (8 / 812),
            left: widthScreen * (102 / 375),
            child: ButtonNavBar(
              onTap: () {
                Navigator.pushNamed(context, '/catalog');
              },
              pathIcon: 'images/catalog.svg',
              title: 'Каталог',
              isActive: active == 2 ? true : false,
            ),
          ),
          Positioned(
            top: heightScreen * (8 / 812),
            left: widthScreen * (197 / 375),
            child: ButtonNavBar(
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
              pathIcon: 'images/projects.svg',
              title: 'Проекты',
              isActive: active == 3 ? true : false,
            ),
          ),
          Positioned(
            top: heightScreen * (8 / 812),
            left: widthScreen * (292 / 375),
            child: ButtonNavBar(
              onTap: () {},
              pathIcon: 'images/profile.svg',
              title: 'Профиль',
              isActive: false,
            ),
          ),
        ],
      ),
    );
  }
}
