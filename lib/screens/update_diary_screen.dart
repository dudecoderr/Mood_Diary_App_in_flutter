import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mood_diary_app/constant/common_button.dart';
import 'package:mood_diary_app/constant/constant.dart';
import 'package:mood_diary_app/constant/text_widget.dart';
import 'package:mood_diary_app/screens/joural_screen.dart';
import 'package:page_transition/page_transition.dart';

class UpdateDairyScreen extends StatefulWidget {
  const UpdateDairyScreen({Key? key}) : super(key: key);

  @override
  State<UpdateDairyScreen> createState() => _UpdateDairyScreenState();
}

class _UpdateDairyScreenState extends State<UpdateDairyScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
              padding: EdgeInsets.only(left: 15.0.w, right: 15.0.w, bottom: 25.h),
              child: CustomText(
                'How are you feeling today?',
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 105.h,
              child: ListView.builder(
                itemCount: moodList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      height: 105.h,
                      width: 105.w,
                      margin: EdgeInsets.only(left: index == 0 ? 15.w : 0.0, right: 15.w),
                      padding: EdgeInsets.all(15.r),
                      decoration: BoxDecoration(
                        color: selectedIndex == index ? kPurpleColor : kBackgroundColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 45.h,
                            width: 45.h,
                            child: Image.asset(
                              'assets/images/${moodList[index].image}',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          CustomText(
                            moodList[index].name!,
                            fontSize: 12.sp,
                            color: selectedIndex == index ? kWhiteColor : kGreyColor,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 30.h),
              child: CustomText(
                'Describe your state of mind',
                fontWeight: FontWeight.w500,
                fontSize: 19.sp,
              ),
            ),
            // TextField
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: TextField(
                onChanged: (v) {},
                minLines: 10,
                maxLines: 10,
                keyboardType: TextInputType.text,
                style: TextStyle(color: kBlackColor, fontFamily: 'Poppins', height: 1.6.h, fontSize: 14.sp),
                // controller: controller,
                autofocus: false,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  counterText: '',
                  filled: true,
                  fillColor: kBackgroundColor,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.r)), borderSide: BorderSide(width: 0.w, color: Colors.transparent)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.r)), borderSide: BorderSide(width: 0.w, color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.r)), borderSide: BorderSide(width: 0.w, color: Colors.transparent)),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.r)), borderSide: BorderSide(width: 0.w, color: Colors.transparent)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.r)), borderSide: BorderSide(width: 0.w, color: Colors.transparent)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.r)), borderSide: BorderSide(width: 0.w, color: Colors.transparent)),

                  // hintText: hint,
                  // hintStyle: TextStyle(fontSize: 18.sp, /* fontFamily: "Helvetica Neue",*/ color: hintText),
                ),
              ),
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop, duration: const Duration(milliseconds: 400), child: const JournalScreen()));
                },
                text: 'Go to my journal',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
