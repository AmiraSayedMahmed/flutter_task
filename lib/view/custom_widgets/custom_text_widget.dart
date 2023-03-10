import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;

  final double fontSize;

  final Color color;

  final Alignment alignment;
   final FontWeight? fontWeight ;
  final int? maxLine;
  final double height;
  final String? fontFamily;
  CustomTextWidget({
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.maxLine,
    this.height = 1,
    this.fontWeight,
    this.fontFamily
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          height: height,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily
        ),
        maxLines: maxLine,
      ),
    );
  }
}
