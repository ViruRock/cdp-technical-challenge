import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomTextView extends StatelessWidget {
  String label = "";
  String fontFamily = "OpenSansRegular";
  double fontSize = 15.0;
  Color color = Color(0xff0000000);
  Alignment alignment = Alignment.centerLeft;

  CustomTextView({
    this.label = "",
    this.fontFamily = "OpenSansRegular",
    this.fontSize = 15.0,
    this.color = const Color(0xff000000),
    alignment = Alignment.centerLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontFamily: fontFamily,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
