import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonNavBar extends StatelessWidget {
  const ButtonNavBar({
    super.key,
    required this.onTap,
    required this.pathIcon,
    required this.title,
    required this.isActive,
  });

  final VoidCallback onTap;
  final String pathIcon;
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: SizedBox(
        width: widthScreen * (76 / 475),
        height: heightScreen * (49 / 812),
        child: Stack(
          children: [
            Positioned(
              top: title == 'Проекты' ? 5 : 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(pathIcon, color: isActive
                  ? Color.fromRGBO(26, 111, 238, 1)
                  : Color.fromRGBO(184, 193, 204, 1),),
            ),
            Positioned(
              bottom: 1,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: isActive
                        ? Color.fromRGBO(26, 111, 238, 1)
                        : Color.fromRGBO(184, 193, 204, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
