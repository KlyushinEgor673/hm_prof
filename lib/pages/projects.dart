import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hm_prof/widgets/card_project.dart';
import 'package:hm_prof/widgets/custom_nav_bar.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: widthScreen * (335 / 375),
            height: heightScreen * (48 / 812),
            margin: EdgeInsets.only(
              left: widthScreen * (20 / 375),
              right: widthScreen * (20 / 375),
              top: heightScreen * (72 / 812),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: heightScreen * (2 / 812),
                  left: 0,
                  right: 0,
                  child: Center(child: Text('Проекты', style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                  ),)),
                ),
                Positioned(
                    top: heightScreen * (6 / 812),
                    right: widthScreen * (6 / 375),
                    child: SvgPicture.asset('images/add.svg'))
              ],
            ),
          ),
          // SizedBox(height: heightScreen * (18 / 812),),
          Expanded(child: ListView(
            children: [
              CardProject()
            ],
          )),
          CustomNavBar(active: 3),
        ],
      ),
    );
  }
}
