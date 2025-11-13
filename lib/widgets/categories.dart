import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int active = 1;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Row(
      children: [
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(left: widthScreen * (20 / 375)),
            height: heightScreen * (48 / 812),
            width: widthScreen * (66 / 375),
            decoration: BoxDecoration(
              color: active == 1
                  ? Color.fromRGBO(26, 111, 238, 1)
                  : Color.fromRGBO(245, 245, 249, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Все',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: active == 1
                      ? Colors.white
                      : Color.fromRGBO(126, 126, 154, 1),
                ),
              ),
            ),
          ),
          onTap: () {
            setState(() {
              active = 1;
            });
          },
        ),
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(left: widthScreen * (16 / 375)),
            height: heightScreen * (48 / 812),
            width: widthScreen * (120 / 375),
            decoration: BoxDecoration(
              color: active == 2
                  ? Color.fromRGBO(26, 111, 238, 1)
                  : Color.fromRGBO(245, 245, 249, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Женщинам',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: active == 2
                      ? Colors.white
                      : Color.fromRGBO(126, 126, 154, 1),
                ),
              ),
            ),
          ),
          onTap: (){
            setState(() {
              active = 2;
            });
          },
        ),
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(left: widthScreen * (16 / 375)),
            height: heightScreen * (48 / 812),
            width: widthScreen * (120 / 375),
            decoration: BoxDecoration(
              color: active == 3
                  ? Color.fromRGBO(26, 111, 238, 1)
                  : Color.fromRGBO(245, 245, 249, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text('Мужчинам',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: active == 3
                      ? Colors.white
                      : Color.fromRGBO(126, 126, 154, 1),
                ))),
          ),
          onTap: (){
            setState(() {
              active = 3;
            });
          },
        ),
      ],
    );
  }
}
