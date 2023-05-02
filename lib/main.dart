import 'package:ecom_bloc/app_blocs.dart';
import 'package:ecom_bloc/app_events.dart';
import 'package:ecom_bloc/app_states.dart';
import 'package:ecom_bloc/route_service/route_name.dart';
import 'package:ecom_bloc/route_service/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'common/values/colors.dart';
import 'firebase_options.dart';
import 'presentation/statemanagement/bloc_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        builder: (context, child) => MaterialApp(
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecom Bloc App'),
      ),
      body: Center(
        child: BlocBuilder<AppBlocs, AppState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "You Pressed Counter this much time",
                ),
                Text(
                  "${context.read<AppBlocs>().state.counter}",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: 'hero1',
            onPressed: () {
              context.read<AppBlocs>().add(
                    DecrementEvent(),
                  );
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: 'hero2',
            onPressed: () {
              context.read<AppBlocs>().add(
                    IncrementEvent(),
                  );
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
