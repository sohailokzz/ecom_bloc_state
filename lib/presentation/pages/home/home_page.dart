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
            return CustomScrollView(
              slivers: [
                _sliverPaddingHomePage(16),
                SliverToBoxAdapter(
                  child: buildHomePageText(
                    text: 'Hello',
                    color: AppColors.primaryThreeElementText,
                  ),
                ),
                _sliverPaddingHomePage(5),
                SliverToBoxAdapter(
                  child: buildHomePageText(
                    text: 'sohailokzz',
                  ),
                ),
                _sliverPaddingHomePage(10),
                SliverToBoxAdapter(
                  child: searchField(),
                ),
                _sliverPaddingHomePage(18),
                SliverToBoxAdapter(
                  child: sliderMenu(
                    context: context,
                    state: state,
                  ),
                ),
                _sliverPaddingHomePage(18),
                SliverToBoxAdapter(
                  child: menuView(),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    vertical: 18.h,
                    horizontal: 0.w,
                  ),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 1.6,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      childCount: 5,
                      (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: courseGirdView(),
                        );
                      },
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  SliverPadding _sliverPaddingHomePage(
    int padding,
  ) {
    return const SliverPadding(
      padding: EdgeInsets.only(top: 10),
    );
  }
}
