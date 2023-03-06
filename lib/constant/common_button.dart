import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mood_diary_app/constant/constant.dart';
import 'package:mood_diary_app/constant/text_widget.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.text, this.height, this.width, this.textColor, this.color, required this.onTap}) : super(key: key);

  String text;
  Color? color;
  Color? textColor;
  double? height;
  double? width;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height ?? 50.h,
        decoration: BoxDecoration(
          color: color ?? kPurpleColor,
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26.withOpacity(0.16),
              offset: Offset(0, 3.h),
              blurRadius: 6.0,
              spreadRadius: 0.3,
            ),
          ],
        ),
        child: Center(
            child: CustomText(
          text,
          fontWeight: FontWeight.w500,
          color: textColor ?? kWhiteColor,
        )),
      ),
    );
  }
}
