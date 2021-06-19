import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomNetworkImageView extends StatelessWidget {

  String imageurl = "";
  double width = double.infinity;
  double height = 200;
  BoxFit boxFit = BoxFit.fill;

  CustomNetworkImageView({this.imageurl = "", width = double.infinity, height = 200, boxFit = BoxFit.fill,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(imageurl, width: width, height: height, fit: boxFit,
      ),
    );
  }
}