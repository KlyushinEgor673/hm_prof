import 'package:flutter/material.dart';

class CardProject extends StatelessWidget {
  const CardProject({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        width: widthScreen * (335 / 375),
        height: heightScreen * (136 / 812),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Color.fromRGBO(244, 244, 244, 1)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Positioned(
              top: heightScreen * (16 / 812),
              left: widthScreen * (16 / 375),
              child: Text(
                'Мой первый проект',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
            Positioned(
              top: heightScreen * (96 / 812),
              left: widthScreen * (16 / 375),
              child: Text(
                'Прошло 2 дня',
                style: TextStyle(
                  color: Color.fromRGBO(147, 147, 150, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0
                ),
              ),
            ),
            Positioned(
              top: heightScreen * (80 / 812),
                right: widthScreen * (16 / 375),
                child: Container(
                  height: heightScreen * (40 / 812),
                  width: widthScreen * (96 / 375),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(26, 111, 238, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Открыть', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                    fontSize: 14
                  ),)),
                ))
          ],
        ),
      ),
    );
  }
}
