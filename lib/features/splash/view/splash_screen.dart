import 'dart:async';
import 'package:flutter/material.dart';
import 'package:labor_a/features/main/view/main_screen.dart';
import 'package:labor_a/features/main/view_model/app_cubit.dart';
import 'package:labor_a/features/on_boarding/view/select_language.dart';

import '../../../core/di.dart';
import '../../../generated/assets.dart';
import '../../../core/resources/app_color.dart';
import '../../../core/resources/app_prefs.dart';
import '../../login_and_register/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;
  final AppPreferences _appPreferences = instance<AppPreferences>();

  _splashDelay() {
    timer = Timer(const Duration(seconds: 2), _goNext);
  }
  @override
  void initState() {
    _splashDelay();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Image.asset(Assets.imagesLogo),
      ),
    );
  }
  _goNext() {
    _appPreferences.isUserLoggedIn().then((isUserLoggedIn) => {
      if (isUserLoggedIn)
        {
          // navigate to main screen
          AppCubit.get(context).goNext(const MainScreen(), context),
        }
      else
        {
          _appPreferences
              .isOnBoardingScreenViewed()
              .then((isOnBoardingScreenViewed) => {
            if (isOnBoardingScreenViewed)
              {
                // navigate to login screen
                AppCubit.get(context).goNext(const LoginScreen(), context),

              }
            else
              {
                // navigate to onBoarding screen
                AppCubit.get(context).goNext(const SelectLanguage(), context),
              }
          })
        }
    });

  }
}
