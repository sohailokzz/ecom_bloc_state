import 'package:ecom_bloc/global.dart';
import 'package:ecom_bloc/route_service/route_name.dart';
import 'package:ecom_bloc/route_service/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'common/values/colors.dart';
import 'presentation/statemanagement/bloc_provider.dart';

Future<void> main() async {
  await Global.initialize();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AllBlocProvider.allBlocProvider,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp(
          builder: EasyLoading.init(),
          title: 'Ecom Bloc',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(
                color: AppColors.primaryText,
              ),
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            primarySwatch: Colors.blue,
          ),
          initialRoute: RouteName.welcomepage,
          onGenerateRoute: Routes.generateRoute,
        ),
      ),
    );
  }
}
