import 'package:ecom_bloc/common/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 1.5,
      ),
    ),
    title: Text(
      'Log In',
      style: TextStyle(
        fontSize: 16.sp,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

Widget buildThirdPartyRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _buildIcons(
        iconPath: 'google',
      ),
      20.myPw,
      _buildIcons(
        iconPath: 'apple',
      ),
      20.myPw,
      _buildIcons(
        iconPath: 'facebook',
      ),
    ],
  );
}

Widget _buildIcons({required String iconPath}) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      height: 40.w,
      width: 40.w,
      child: Image.asset('assets/icons/$iconPath.png'),
    ),
  );
}

Widget builText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 14.sp,
      color: Colors.grey.withOpacity(0.5),
      fontWeight: FontWeight.normal,
    ),
  );
}
