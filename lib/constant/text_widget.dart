import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mood_diary_app/constant/constant.dart';

class CustomText extends StatelessWidget {
  String text;
  Color? color;
  double? fontSize;
  String? fontFamily;
  FontWeight? fontWeight;

  CustomText(this.text, {this.color, this.fontSize, this.fontWeight, this.fontFamily, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? kBlackColor, fontFamily: fontFamily ?? 'Roboto', fontSize: fontSize ?? 14.sp, fontWeight: fontWeight ?? FontWeight.w400),
    );
  }
}
