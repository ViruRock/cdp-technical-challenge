import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomAssetsImageView extends StatelessWidget {
  String imageurl = "";
  double width = double.infinity;
  double height = double.infinity;
  BoxFit boxFit = BoxFit.fill;

  CustomAssetsImageView({
    this.imageurl = "",
    width = double.infinity,
    height = double.infinity,
    boxFit = BoxFit.fill,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imageurl,
        width: width,
        height: height,
        fit: boxFit,
      ),
    );
  }
}
