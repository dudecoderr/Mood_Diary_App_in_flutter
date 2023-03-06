import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mood_diary_app/constant/common_button.dart';
import 'package:mood_diary_app/constant/constant.dart';
import 'package:mood_diary_app/constant/text_widget.dart';

class UpdateDairyScreen extends StatefulWidget {
  const UpdateDairyScreen({Key? key}) : super(key: key);

  @override
  State<UpdateDairyScreen> createState() => _UpdateDairyScreenState();
}

class _UpdateDairyScreenState extends State<UpdateDairyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60.h),
          Align(alignment: Alignment.center, child: CustomText('Today - 13 Sep', fontSize: 14.sp, fontWeight: FontWeight.w500, color: kGreyColor)),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: CustomText(
              'Hi,Chris',
              color: kGreyColor,
              fontSize: 17.sp,
            ),
          ),
          SizedBox(height: 7.h),
          Padding(
            padding: EdgeInsets.all(15.0.r),
            child: CustomText(
              'How are you feeling today?',
              fontWeight: FontWeight.w500,
              fontSize: 19.sp,
            ),
          ),
          SizedBox(
            height: 105.h,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 105.h,
                  width: 105.w,
                  margin: EdgeInsets.only(left: index == 0 ? 15.w : 0.0, right: 15.w),
                  padding: EdgeInsets.all(18.r),
                  decoration: BoxDecoration(
                    color: const Color(0xffeae8fc),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    children: [
                      CustomText(
                        "😄",
                        fontSize: 45.sp,
                      ),
                      SizedBox(height: 10.h),
                      CustomText(
                        'cheerful',
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0.r),
            child: CustomText(
              'Describe your state of mind',
              fontWeight: FontWeight.w500,
              fontSize: 19.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: CustomButton(
              onTap: () {},
              text: 'Go to my journal',
            ),
          ),
        ],
      ),
    );
  }
}
