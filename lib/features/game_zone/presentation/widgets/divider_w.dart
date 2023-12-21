
import 'package:flutter/material.dart';
import 'package:math_game/utils/extensions/context_extension.dart';
class DividerW extends StatelessWidget {
  final double _height;
  final double _width;
  const DividerW({super.key,required double height,double width = double.infinity}):
        _height = height,_width = width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}


