import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';

Widget buildMainPages({
  required int index,
}) {
  List<Widget> mainPages = [
    const Center(
      child: Text('Home'),
    ),
    const Center(
      child: Text('Search'),
    ),
    const Center(
      child: Text('Course'),
    ),
    const Center(
      child: Text('Chat'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];

  return mainPages[index];
}

var bottomTabs = [
  BottomNavigationBarItem(
    label: 'Home',
    icon: Image.asset(
      'assets/icons/home.png',
      height: 18.h,
      width: 18.w,
    ),
    activeIcon: Image.asset(
      'assets/icons/home.png',
      height: 18.h,
      width: 18.w,
      color: AppColors.primaryElement,
    ),
  ),
  BottomNavigationBarItem(
    label: 'Search',
    icon: Image.asset(
      'assets/icons/search2.png',
      height: 18.h,
      width: 18.w,
    ),
    activeIcon: Image.asset(
      'assets/icons/search2.png',
      height: 18.h,
      width: 18.w,
      color: AppColors.primaryElement,
    ),
  ),
  BottomNavigationBarItem(
    label: 'Course',
    icon: Image.asset(
      'assets/icons/play-circle1.png',
      height: 18.h,
      width: 18.w,
    ),
    activeIcon: Image.asset(
      'assets/icons/play-circle1.png',
      height: 18.h,
      width: 18.w,
      color: AppColors.primaryElement,
    ),
  ),
  BottomNavigationBarItem(
    label: 'Chat',
    icon: Image.asset(
      'assets/icons/message-circle.png',
      height: 18.h,
      width: 18.w,
    ),
    activeIcon: Image.asset(
      'assets/icons/message-circle.png',
      height: 18.h,
      width: 18.w,
      color: AppColors.primaryElement,
    ),
  ),
  BottomNavigationBarItem(
    label: 'Profile',
    icon: Image.asset(
      'assets/icons/person2.png',
      height: 18.h,
      width: 18.w,
    ),
    activeIcon: Image.asset(
      'assets/icons/person2.png',
      height: 18.h,
      width: 18.w,
      color: AppColors.primaryElement,
    ),
  ),
];
