import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class SkeletonContainer extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadiusCircular;

  SkeletonContainer({
    this.width = 0,
    this.height = 0,
    this.borderRadiusCircular = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
      child:Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(borderRadiusCircular),
        ),
      ),
    );
  }
}