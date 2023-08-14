import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_a/features/on_boarding/view/widgets/on_boarding_widget.dart';
import 'package:labor_a/core/resources/app_color.dart';
import 'package:labor_a/core/resources/app_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/di.dart';
import '../../../core/resources/app_prefs.dart';
import '../../../core/utils/custom_button.dart';
import '../../../generated/assets.dart';
import '../view_model/boarding_cubit.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  final AppPreferences _appPreferences = instance<AppPreferences>();

  _bind() {
    _appPreferences.setOnBoardingScreenViewed();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const OnBoardingWidget(image: Assets.imagesImageDesc1,
          title: AppStrings.easyProcess,
          subTitle: AppStrings.appDesc1),
      const OnBoardingWidget(image: Assets.imagesImageDesc2,
          title: AppStrings.distinguishLabor,
          subTitle: AppStrings.appDesc2),
      const OnBoardingWidget(image: Assets.imagesImageDesc3,
          title: AppStrings.allServicePlace,
          subTitle: AppStrings.appDesc3)
    ];
    final controller = PageController();
    return BlocProvider(
      create: (context) => BoardingCubit(),
      child: BlocBuilder<BoardingCubit, BoardingState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.57.h,
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: controller,
                      itemCount: pages.length,
                      itemBuilder: (_, index) {
                        return pages[index % pages.length];
                      },
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: pages.length,
                    effect: SlideEffect(
                        radius: 2.0,
                        dotWidth: 20.0,
                        dotHeight: 6.0,
                        type: SlideType.slideUnder,
                        strokeWidth: 1.5,
                        activeDotColor: ColorManager.darkYellow,
                        dotColor: ColorManager.grey),
                  ),
                  const SizedBox(height: 50,),
                  CustomButton(
                    clicked: true, content: AppStrings.next, onPress: () {
                    BoardingCubit.get(context).navigateToNextPage(
                        0, controller);
                  }
                    ,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
