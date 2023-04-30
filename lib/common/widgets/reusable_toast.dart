import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

reusableToastMsg({
  required String msg,
  Color backgraoundColor = Colors.black,
  Color textColor = Colors.white,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: backgraoundColor,
    textColor: textColor,
    fontSize: 16.sp,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 2,
  );
}
