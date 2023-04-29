import 'package:ecom_bloc/common/spacing.dart';
import 'package:ecom_bloc/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: AppColors.primarySecondaryBackground,
        height: 1.5,
      ),
    ),
    title: Text(
      'Log In',
      style: TextStyle(
        fontSize: 16.sp,
        color: AppColors.primaryText,
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

Widget buildTextField({
  required String hintText,
  iconName,
  fieldType,
  void Function(String value)? func,
}) {
  return Container(
    height: 50.h,
    width: 325.w,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15.w),
      ),
      border: Border.all(
        color: AppColors.primaryFourElementText,
      ),
    ),
    child: Row(
      children: [
        Container(
          height: 18.h,
          width: 18.w,
          margin: EdgeInsets.only(left: 17.w),
          child: Image.asset('assets/icons/$iconName.png'),
        ),
        SizedBox(
          height: 50.h,
          width: 270.w,
          child: TextField(
            onChanged: (value) => func!(value),
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              hintStyle: const TextStyle(
                color: AppColors.primarySecondaryElementText,
              ),
            ),
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.primaryText,
              fontWeight: FontWeight.normal,
            ),
            autocorrect: false,
            obscureText: fieldType == 'password' ? true : false,
          ),
        )
      ],
    ),
  );
}

Widget buildForgotPassword() {
  return GestureDetector(
    onTap: () {},
    child: Text(
      'Forgot Password',
      style: TextStyle(
        color: AppColors.primaryText,
        fontSize: 12.sp,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
      ),
    ),
  );
}

Widget buildLogAndRegButton({
  required String buttonTitle,
  buttonType,
}) {
  return Container(
    width: 325.w,
    height: 50.h,
    decoration: BoxDecoration(
      color: buttonType == 'login'
          ? AppColors.primaryElement
          : AppColors.primaryBackground,
      borderRadius: BorderRadius.all(
        Radius.circular(15.w),
      ),
      border: Border.all(
        color: buttonType == 'login'
            ? Colors.transparent
            : AppColors.primaryFourElementText,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(0, 1),
        ),
      ],
    ),
    child: Center(
      child: Text(
        buttonTitle,
        style: TextStyle(
          fontSize: 16.sp,
          color: buttonType == 'login'
              ? AppColors.primaryBackground
              : AppColors.primaryText,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}
