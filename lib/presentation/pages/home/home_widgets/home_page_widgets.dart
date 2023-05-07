import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecom_bloc/common/spacing.dart';
import 'package:ecom_bloc/presentation/pages/home/bloc/home_page_blocs.dart';
import 'package:ecom_bloc/presentation/pages/home/bloc/home_page_events.dart';
import 'package:ecom_bloc/presentation/pages/home/bloc/home_page_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/values/colors.dart';

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

Text buildHomePageText({
  String? text,
  Color color = AppColors.primaryText,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

Widget searchField() {
  return Row(
    children: [
      Container(
        height: 45.h,
        width: 280.w,
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: BorderRadius.circular(
            15.h,
          ),
          border: Border.all(
            color: AppColors.primaryFourElementText,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/icons/search.png',
                height: 16.h,
                width: 16.w,
              ),
            ),
            SizedBox(
              height: 40.h,
              width: 240.w,
              child: TextField(
                // onChanged: (value) => func!(value),
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                  hintText: 'Search your product',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: AppColors.primarySecondaryElementText,
                  ),
                ),
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
      10.myPw,
      GestureDetector(
        child: Container(
          height: 32.h,
          width: 32.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(13.h),
            ),
            color: AppColors.primaryElement,
            border: Border.all(
              color: AppColors.primaryElement,
            ),
          ),
          child: Image.asset(
            'assets/icons/options.png',
          ),
        ),
      ),
    ],
  );
}

Widget sliderMenu({
  required BuildContext context,
  required HomePageSates state,
}) {
  return Column(
    children: [
      SizedBox(
        height: 170.h,
        width: 325.w,
        child: PageView(
          onPageChanged: (value) {
            context.read<HomePageBlocs>().add(
                  HomePageDotsEvent(value),
                );
          },
          children: [
            Image.asset(
              'assets/icons/Art.png',
              height: 160.h,
              width: 325.w,
              fit: BoxFit.fill,
            ),
            Image.asset(
              'assets/icons/Image(1).png',
              height: 160.h,
              width: 325.w,
              fit: BoxFit.fill,
            ),
            Image.asset(
              'assets/icons/Image(2).png',
              height: 160.h,
              width: 325.w,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
      DotsIndicator(
        dotsCount: 3,
        position: state.index.toDouble(),
        mainAxisAlignment: MainAxisAlignment.center,
        decorator: DotsDecorator(
          color: AppColors.primaryThreeElementText,
          activeColor: AppColors.primaryElement,
          size: const Size.square(5.0),
          activeSize: const Size(17, 5),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    ],
  );
}
