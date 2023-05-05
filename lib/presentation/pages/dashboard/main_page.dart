import 'package:ecom_bloc/common/values/colors.dart';
import 'package:ecom_bloc/presentation/pages/dashboard/bloc/dashboard_blocs.dart';
import 'package:ecom_bloc/presentation/pages/dashboard/bloc/dashboard_states.dart';
import 'package:ecom_bloc/presentation/pages/dashboard/main_page_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/dashboard_events.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBlocs, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: buildMainPages(
            index: state.index,
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
              currentIndex: state.index,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: AppColors.primaryElement,
              unselectedItemColor: AppColors.primaryFourElementText,
              onTap: (value) {
                context.read<DashboardBlocs>().add(
                      TriggerAppEvent(
                        index: value,
                      ),
                    );
              },
              items: bottomTabs,
            ),
          ),
        );
      },
    );
  }
}
