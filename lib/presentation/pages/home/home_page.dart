import 'package:ecom_bloc/common/spacing.dart';
import 'package:ecom_bloc/common/values/colors.dart';
import 'package:ecom_bloc/presentation/pages/home/bloc/home_page_blocs.dart';
import 'package:ecom_bloc/presentation/pages/home/bloc/home_page_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_widgets/home_page_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: builHomePageAppBar(),
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.w,
          ),
          child: BlocBuilder<HomePageBlocs, HomePageSates>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.myPh,
                  buildHomePageText(
                    text: 'Hello',
                    color: AppColors.primaryThreeElementText,
                  ),
                  5.myPh,
                  buildHomePageText(
                    text: 'sohailokzz',
                  ),
                  10.myPh,
                  searchField(),
                  18.myPh,
                  sliderMenu(
                    context: context,
                    state: state,
                  ),
                ],
              );
            },
          )),
    );
  }
}
