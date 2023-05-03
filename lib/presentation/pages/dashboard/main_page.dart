import 'package:ecom_bloc/common/values/colors.dart';
import 'package:ecom_bloc/presentation/pages/dashboard/main_page_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: buildMainPages(
        index: _index,
      ),
      bottomNavigationBar: Container(
        width: 375.w,
        height: 58.h,
        decoration: BoxDecoration(
          color: AppColors.primaryElement,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.h),
            topRight: Radius.circular(20.h),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: _index,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.primaryElement,
          unselectedItemColor: AppColors.primaryFourElementText,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          items: [
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
          ],
        ),
      ),
    );
  }
}
