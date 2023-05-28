import 'package:ecom_bloc/presentation/pages/dashboard/bloc/dashboard_blocs.dart';
import 'package:ecom_bloc/presentation/pages/dashboard/bloc/dashboard_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/constants.dart';
import '../../../../../global.dart';
import '../../../../../route_service/route_name.dart';
import '../../../../widgets/shared_text.dart';

AppBar buildSettingAppBar() {
  return AppBar(
    centerTitle: true,
    title: reusableBaseText(
      text: 'Settings',
    ),
  );
}

Widget buildLogoutButton(
  BuildContext context,
) {
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Confirmation'),
              content: const Text('Are you sure want to logout'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    context.read<DashboardBlocs>().add(
                          const TriggerAppEvent(
                            index: 0,
                          ),
                        );
                    Global.storageService.remove(
                      AppConstant.storageuserprofilekey,
                    );
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      RouteName.signIn,
                      (route) => false,
                    );
                  },
                  child: const Text('Confirm'),
                ),
              ],
            );
          });
    },
    child: Container(
      height: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/icons/Logout.png'),
        ),
      ),
    ),
  );
}
