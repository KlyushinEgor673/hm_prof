import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hm_prof/widgets/card_product_catalog.dart';
import 'package:hm_prof/widgets/categories.dart';
import 'package:hm_prof/widgets/custom_nav_bar.dart';
import 'package:hm_prof/widgets/custom_text_field.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  List cards = [false, false];
  bool isAdd = false;
  int indexAdd = 0;
  bool isCart = false;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: widthScreen * (335 / 375),
                margin: EdgeInsets.only(top: heightScreen * (58 / 812)),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextField(width: 265),
                      SvgPicture.asset('images/avatar.svg'),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: heightScreen * (32 / 812),
                  bottom: heightScreen * (20 / 812),
                ),
                child: Categories(),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: cards.length,
                  itemBuilder: (BuildContext context, i) {
                    return CardProductCatalog(
                      isAdd: cards[i],
                      onTap: () {
                        if (cards[i]) {
                          setState(() {
                            cards[i] = false;
                            bool deleteCart = true;
                            for (int i = 0; i < cards.length; ++i) {
                              if (cards[i]) {
                                deleteCart = false;
                              }
                            }
                            if (deleteCart) {
                              isCart = false;
                            }
                          });
                        } else {
                          setState(() {
                            isAdd = true;
                            indexAdd = i;
                          });
                        }
                      },
                    );
                  },
                ),
              ),
              if (isCart)
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/cart');
                  },
                  child: Container(
                    width: widthScreen * (335 / 375),
                    height: heightScreen * (56 / 812),
                    margin: EdgeInsets.only(
                      bottom: heightScreen * (32 / 812),
                      top: heightScreen * (32 / 812),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(26, 111, 238, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: heightScreen * (16 / 812),
                          left: widthScreen * (270 / 375),
                          child: Text(
                            '500 ₽',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          top: heightScreen * (16 / 812),
                          left: widthScreen * (52 / 375),
                          child: Text(
                            'В корзину',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          top: heightScreen * (18 / 812),
                          left: widthScreen * (16 / 375),
                          child: SvgPicture.asset('images/cart.svg'),
                        ),
                      ],
                    ),
                  ),
                ),
              CustomNavBar(active: 2),
            ],
          ),
          if (isAdd)
            GestureDetector(
              child: Container(
                width: widthScreen,
                height: heightScreen,
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
              onTap: () {
                setState(() {
                  isAdd = false;
                });
              },
            ),
          if (isAdd)
            Positioned(
              bottom: 0,
              child: Container(
                height: heightScreen * (636 / 812),
                width: widthScreen,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: heightScreen * (24 / 812),
                      left: widthScreen * (20 / 375),
                      child: SizedBox(
                        width: 267,
                        child: Text(
                          'Рубашка воскресенье для машинного вязания',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: heightScreen * (100 / 812),
                      left: widthScreen * (20 / 375),
                      child: Text(
                        'Описание',
                        style: TextStyle(
                          color: Color.fromRGBO(147, 147, 150, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: heightScreen * (128 / 812),
                      left: widthScreen * (20 / 375),
                      child: SizedBox(
                        width: widthScreen * (335 / 375),
                        child: Text(
                          '''Мой выбор для этих шапок – кардные составы, которые раскрываются деликатным пушком. Кашемиры, мериносы, смесовки с ними отлично подойдут на шапку.
Кардные составы берите в большое количество сложений, вязать будем резинку 1х1, плотненько.
Пряжу 1400-1500м в 100г в 4 сложения, пряжу 700м в 2 сложения. Ориентир для конечной толщины – 300-350м в 100г.
Артикулы, из которых мы вязали эту модель: Zermatt Zegna Baruffa, Cashfive, Baby Cashmere Loro Piana, Soft Donegal и другие.
Примерный расход на шапку с подгибом 70-90г.''',
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: heightScreen * (477 / 812),
                      left: widthScreen * (20 / 375),
                      child: Text(
                        'Примерный расход:',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(147, 147, 150, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: heightScreen * (501 / 812),
                      left: widthScreen * (20 / 375),
                      child: Text(
                        '80-90 г',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: heightScreen * (24 / 812),
                      right: widthScreen * (20 / 375),
                      child: GestureDetector(
                        child: SvgPicture.asset('images/cross.svg'),
                        onTap: () {
                          setState(() {
                            isAdd = false;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      bottom: heightScreen * (40 / 812),
                      left: widthScreen * (20 / 375),
                      child: GestureDetector(
                        child: Container(
                          width: widthScreen * (335 / 375),
                          height: heightScreen * (56 / 812),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(26, 111, 238, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Добавить за 690 ₽',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            isCart = true;
                            isAdd = false;
                            for (int i = 0; i < cards.length; ++i) {
                              if (i == indexAdd) {
                                cards[i] = true;
                              }
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
