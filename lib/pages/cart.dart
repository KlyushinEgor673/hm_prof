import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hm_prof/widgets/card_cart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: heightScreen * (116 / 812),
            left: widthScreen * (20 / 375),
            child: Text(
              'Корзина',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ),
          Positioned(
            top: heightScreen * (120 / 812),
            right: widthScreen * (26 / 375),
            child: SvgPicture.asset('images/trash.svg'),
          ),
          Positioned(
            top: heightScreen * (178 / 812),
            left: widthScreen * (20 / 375),
            child: CardCart(),
          ),
          Positioned(
            top: heightScreen * (346 / 812),
            left: widthScreen * (20 / 375),
            child: CardCart(),
          ),
          Positioned(
            top: heightScreen * (516 / 812),
            left: widthScreen * (20 / 375),
            child: Text(
              'Сумма',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: heightScreen * (516 / 812),
            left: widthScreen * (285 / 375),
            child: Text(
              '2490 ₽',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            bottom: 0,
            child: GestureDetector(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: widthScreen * (20 / 375),
                  vertical: heightScreen * (32 / 812)
                ),
                width: widthScreen * (335 / 375),
                height: heightScreen * (56 / 812),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(26, 111, 238, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Перейти к оформлению заказа',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {
                showDialog(context: context, barrierDismissible: false, builder: (BuildContext context){
                  Future.delayed(Duration(seconds: 5), (){
                    Navigator.pushNamed(context, '/');
                  });
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    content: Text('Заказ оформлен'),
                  );
                });
              },
            ),
          ),
          Positioned(
            top: heightScreen * (60 / 812),
              left: widthScreen * (20 / 375),
              child: GestureDetector(
                child: Container(
                  height: heightScreen * (32 / 812),
                  width: widthScreen * (32 / 375),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 245, 249, 1),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: SvgPicture.asset('images/back.svg'),
                  ),
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              ))
        ],
      ),
    );
  }
}
