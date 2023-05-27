import 'package:ecom_bloc/common/spacing.dart';
import 'package:ecom_bloc/common/values/colors.dart';
import 'package:ecom_bloc/route_service/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar builProfileAppBar() {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.only(
        left: 18,
      ),
      child: Image.asset(
        'assets/icons/menu.png',
      ),
    ),
    centerTitle: true,
    title: Text(
      'Profile',
      style: TextStyle(
        color: AppColors.primaryText,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
    leadingWidth: 40.w,
    actions: [
      Padding(
        padding: const EdgeInsets.only(
          right: 18,
        ),
        child: Image.asset(
          'assets/icons/more-vertical.png',
          height: 24.h,
          width: 24.w,
        ),
      ),
    ],
  );
}

Widget buildProfileImage() {
  return Container(
    alignment: Alignment.bottomRight,
    padding: EdgeInsets.only(
      right: 8.sp,
    ),
    width: 80.w,
    height: 80.h,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage(
          'assets/icons/headpic.png',
        ),
      ),
    ),
    child: Image(
      height: 25.h,
      width: 25.w,
      image: const AssetImage(
        'assets/icons/edit_3.png',
      ),
    ),
  );
}

var imageInfo = <String, String>{
  "Settings": "settings.png",
  "Payment details": "credit-card.png",
  "Achievements": "award.png",
  "Love": "heart(1).png",
  "Reminders": "cube.png",
};

Widget buildProfileListveiw() {
  return ListView.builder(
    padding: EdgeInsets.only(
      left: 25.sp,
    ),
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: imageInfo.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              RouteName.settings,
            );
          },
          child: Row(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryElement,
                ),
                child: Image.asset(
                  'assets/icons/${imageInfo.values.elementAt(index)}',
                ),
              ),
              15.myPw,
              Text(
                imageInfo.keys.elementAt(index),
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
