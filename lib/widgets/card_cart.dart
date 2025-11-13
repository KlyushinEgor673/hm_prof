import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CardCart extends StatelessWidget {
  const CardCart({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Container(
      width: widthScreen * (335 / 375),
      height: heightScreen * (138 / 812),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color.fromRGBO(244, 244, 244, 1),
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: heightScreen * (16 / 812),
            left: widthScreen * (16 / 375),
            child: SizedBox(
              width: 275,
              child: Text(
                'Рубашка воскресенье для машинного вязания',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Positioned(
            top: heightScreen * (16 / 812),
            right: widthScreen * (16 / 375),
            child: SvgPicture.asset('images/delete.svg'),
          ),
          Positioned(
            top: heightScreen * (94 / 812),
            left: widthScreen * (16 / 375),
            child: Text(
              '300 ₽',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: heightScreen * (96 / 812),
            left: widthScreen * (174 / 375),
            child: Text('1 штук'),
          ),
        ],
      ),
    );
  }
}
