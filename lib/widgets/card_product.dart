import 'package:flutter/material.dart';

class CardProduct extends StatefulWidget {
  const CardProduct({super.key});

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  bool isAdd = false;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: heightScreen * (16 / 812)),
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
              child: SizedBox(
                width: 303,
                child: Text(
                  'Рубашка Воскресенье для машинного вязания',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Positioned(
              top: heightScreen * (72 / 812),
              left: widthScreen * (16 / 375),
              child: Text(
                'Мужская одежда',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(147, 147, 150, 1),
                ),
              ),
            ),
            Positioned(
              top: heightScreen * (96 / 812),
              left: widthScreen * (16 / 375),
              child: Text(
                '300 ₽',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ),
            Positioned(
              top: heightScreen * (80 / 812),
              right: widthScreen * (16 / 375),
              child: GestureDetector(
                child: Container(
                  height: heightScreen * (40 / 812),
                  width: widthScreen * (96 / 375),
                  decoration: BoxDecoration(
                    color: isAdd
                        ? Colors.white
                        : Color.fromRGBO(32, 116, 242, 1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color:  Color.fromRGBO(32, 116, 242, 1),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      isAdd ? 'Убрать' : 'Добавить',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: isAdd
                            ? Color.fromRGBO(32, 116, 242, 1)
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    isAdd = !isAdd;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
