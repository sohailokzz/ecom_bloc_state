import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar builHomePageAppBar() {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.only(
        left: 18,
      ),
      child: Image.asset(
        'assets/icons/menu.png',
      ),
    ),
    leadingWidth: 40.w,
    actions: [
      Padding(
        padding: const EdgeInsets.only(
          right: 18,
        ),
        child: Image.asset(
          'assets/icons/img.png',
          height: 40.h,
          width: 40.w,
        ),
      ),
    ],
  );
}
