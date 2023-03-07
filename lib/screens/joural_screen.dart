import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mood_diary_app/constant/constant.dart';
import 'package:mood_diary_app/constant/text_widget.dart';

class JournalScreen extends StatefulWidget {
  const JournalScreen({Key? key}) : super(key: key);

  @override
  State<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      appBar: AppBar(
        backgroundColor: kBlackColor,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_outlined),
        ),
        title: CustomText(
          'Journal',
          color: kWhiteColor,
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.h),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.r),
              topRight: Radius.circular(25.r),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText('fewb'),
            DatePicker(
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              monthTextStyle: TextStyle(fontSize: 0.sp),
              selectionColor: kPurpleColor,
              selectedTextColor: Colors.white,
              onDateChange: (date) {
                // New date selected
                setState(() {
                  // _selectedValue = date;
                });
              },
            ),
            Row(
              children: [
                CustomText(
                  'Comment',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
                Icon(Icons.edit_note_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
