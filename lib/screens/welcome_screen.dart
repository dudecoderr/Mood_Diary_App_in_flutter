import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mood_diary_app/constant/common_button.dart';
import 'package:mood_diary_app/constant/constant.dart';
import 'package:mood_diary_app/constant/text_widget.dart';
import 'package:mood_diary_app/screens/update_diary_screen.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kBlackColor,
              Color(0xff212023),
              Color(0xff2b2937),
              Color(0xff393652),
              // Color(0xff47426d),
              Color(0xff4d4a7b),
              Color(0xff6762af),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Transform.rotate(
                      angle: -0.25,
                      child: Container(
                        height: 180.h,
                        width: 140.w,
                        padding: EdgeInsets.all(20.r),
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/memoji_4.png',
                                height: 110.h,
                                // width: 130.w,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            CustomText(
                              'cheerful',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.25,
                      child: Container(
                        height: 180.h,
                        width: 140.w,
                        padding: EdgeInsets.all(20.r),
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/memoji_1.png',
                              height: 110.h,
                              // width: 130.w,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(height: 5.h),
                            CustomText(
                              'Shocked',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 220.h,
                  width: 180.w,
                  padding: EdgeInsets.all(20.r),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(25.r),
                      boxShadow: [BoxShadow(color: Colors.black45, offset: Offset(0, 0), blurRadius: 10, spreadRadius: 3)]),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/memoji_2.png',
                        height: 150.h,
                        // width: 130.w,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 5.h),
                      CustomText(
                        'cheerful',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 60.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'mood',
                    color: Colors.white,
                    fontSize: 90.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    'dairy',
                    color: kWhiteColor.withOpacity(0.6),
                    fontSize: 90.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 30.h),
                  CustomText(
                    'Use the mood dairy to track your state and get tips how to improve your state',
                    color: kWhiteColor.withOpacity(0.6),
                    fontSize: 13.sp,
                    height: 1.5,
                  ),
                  SizedBox(height: 50.h),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                          context, PageTransition(type: PageTransitionType.theme, duration: Duration(seconds: 1), child: UpdateDairyScreen()));

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const UpdateDairyScreen()),
                      // );
                    },
                    text: 'Update my dairy',
                    color: kWhiteColor,
                    textColor: kPurpleColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
