import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return SizedBox(
      width: widthScreen * (width / 375),
      height: heightScreen * (48 / 812),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Искать описания',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset('images/search.svg'),
          ),
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(147, 147, 150, 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color.fromRGBO(235, 235, 235, 1),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color.fromRGBO(235, 235, 235, 1),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
