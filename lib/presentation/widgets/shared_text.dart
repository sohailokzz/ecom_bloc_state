import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/colors.dart';

Text reusableBaseText({
  String? text,
  Color color = AppColors.primaryText,
  int fontsize = 16,
  FontWeight fontWeight = FontWeight.bold,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontSize: fontsize.sp,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}
