import 'package:flutter/material.dart';

class ContainerBoxSellerReview extends StatelessWidget {
  const ContainerBoxSellerReview(
      {super.key,
      required this.backgroundcolor,
      required this.childtext,
      required this.borderRadius});
  final Color backgroundcolor;
  final BorderRadiusGeometry borderRadius;
  final Widget childtext;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration:
          BoxDecoration(color: backgroundcolor, borderRadius: borderRadius),
      child: Center(child: childtext),
    );
  }
}
