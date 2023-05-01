import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecom_bloc/common/spacing.dart';
import 'package:ecom_bloc/common/values/colors.dart';
import 'package:ecom_bloc/presentation/pages/welcome/bloc/welcome_blocs.dart';
import 'package:ecom_bloc/presentation/pages/welcome/bloc/welcome_events.dart';
import 'package:ecom_bloc/presentation/pages/welcome/bloc/welcome_states.dart';
import 'package:ecom_bloc/route_service/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<WelcomeBloc, WelcomeState>(
        builder: (context, state) {
          return SizedBox(
            width: 375.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    state.page = index;
                    context.read<WelcomeBloc>().add(
                          WelcomeEvent(),
                        );
                  },
                  children: [
                    PagesDesign(
                      pageController: pageController,
                      context: context,
                      index: 1,
                      imagePath: 'assets/images/reading.png',
                      title: 'First See Learning',
                      subTitle:
                          'Forgot about for of paper all knowledge in one learning',
                      buttonTitle: 'Next',
                    ),
                    PagesDesign(
                      pageController: pageController,
                      context: context,
                      index: 2,
                      imagePath: 'assets/images/boy.png',
                      title: 'Connect with everyone',
                      subTitle:
                          "Always keep in touch with tutor & friends. Let's get connected.",
                      buttonTitle: 'Next',
                    ),
                    PagesDesign(
                      pageController: pageController,
                      context: context,
                      index: 3,
                      imagePath: 'assets/images/man.png',
                      title: 'Always Fascinated Learning',
                      subTitle:
                          'Anywhere, Anytime.. The time is your descretion so study whenever you want',
                      buttonTitle: 'Get Started',
                    ),
                  ],
                ),
                Positioned(
                  bottom: 70.h,
                  child: DotsIndicator(
                    position: state.page.toDouble(),
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      color: AppColors.primaryThreeElementText,
                      activeColor: AppColors.primaryElement,
                      size: const Size.square(8),
                      activeSize: const Size(20, 8),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class PagesDesign extends StatelessWidget {
  final int index;
  final String title;
  final String subTitle;
  final String imagePath;
  final BuildContext context;
  final String buttonTitle;
  final PageController pageController;

  const PagesDesign({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.context,
    required this.buttonTitle,
    required this.index,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        50.myPh,
        SizedBox(
          height: 345.w,
          width: 345.w,
          child: Image.asset(imagePath),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            color: AppColors.primaryText,
            fontWeight: FontWeight.normal,
          ),
        ),
        10.myPh,
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.primarySecondaryElementText,
            fontWeight: FontWeight.normal,
          ),
        ),
        GestureDetector(
          onTap: () {
            if (index < 3) {
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.decelerate,
              );
            } else {
              Navigator.of(context).pushNamedAndRemoveUntil(
                RouteName.signIn,
                (route) => false,
              );
            }
          },
          child: Container(
            width: 325.w,
            height: 50.h,
            margin: EdgeInsets.only(
              top: 100.h,
              right: 25.w,
              left: 25.w,
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.all(
                Radius.circular(15.w),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
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
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
