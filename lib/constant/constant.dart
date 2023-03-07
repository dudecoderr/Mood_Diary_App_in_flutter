import 'package:flutter/material.dart';
import 'package:mood_diary_app/models/mood_model.dart';

const Color kBlackColor = Color(0xff1D1D1D);
const Color kPurpleColor = Color(0xff7A70DD);
const Color kBackgroundColor = Color(0xfff0effd);
const Color kWhiteColor = Color(0xFFF6F5FF);
const Color kGreyColor = Color(0xFFb7b9c0);

List<MoodType> moodList = [
  MoodType(image: 'happy-emoji.png', name: 'cheerful'),
  MoodType(image: 'relaxed-emoji.png', name: 'relaxed'),
  MoodType(image: 'neutral-emoji.png', name: 'neutral'),
  MoodType(image: 'confused-emoji.png', name: 'confused'),
];
