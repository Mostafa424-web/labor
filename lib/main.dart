import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_a/features/main/view_model/app_cubit.dart';
import 'package:labor_a/features/splash/view/splash_screen.dart';
import 'core/di.dart';
import 'core/resources/language_manager.dart';
import 'features/on_boarding/view_model/boarding_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  initAppModule();

  runApp(EasyLocalization(
      path: assetsPathLocalization,
      supportedLocales: const [arabicLocale, englishLocale],
      child: Phoenix(child: const MyApp())));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<BoardingCubit>(
              create: (_) => BoardingCubit(),
            ),
            BlocProvider<AppCubit>(
              create: (_) => AppCubit(),
            ),
          ],
          child: BlocConsumer<BoardingCubit, BoardingState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return MaterialApp(
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                debugShowCheckedModeBanner: false,
                locale: context.locale,
                home: const SplashScreen(),
              );
            },
          ),
        );
      },
    );
  }
}


