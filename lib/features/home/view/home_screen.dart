import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:labor_a/features/home/view/addresss.dart';
import 'package:labor_a/features/home/view/widgets/cardlocation.dart';
import 'package:labor_a/features/home/view/widgets/good_moning.dart';
import 'package:labor_a/features/home/view/widgets/grid_categries.dart';
import 'package:labor_a/features/home/view/widgets/service_widget.dart';
import 'package:labor_a/core/resources/app_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../generated/assets.dart';
import '../../../core/resources/app_color.dart';
import '../../on_boarding/view_model/boarding_cubit.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Image.asset(Assets.imagesLogoAppbar),
        actions: const [
          Icon(
            Icons.notification_important
          ),
        ]
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 34,),
                  const GoodMorningWidget(name: AppStrings.mostafa,),
                  const SizedBox(height: 12,),
                  const CardLocation(widget: Addresses()),
                  const SizedBox(height: 24,),
                  Card(
                    color: const Color(0xFF5FD068),
                    child: ListTile(
                      title: Image.asset(Assets.imagesLogoAppbar,width: 24,color: Colors.white,alignment: Alignment.centerRight,),
                      subtitle: const Text(
                        AppStrings.allServicePlace,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ).tr(),
                      trailing:
                      Image.asset(
                        Assets.imagesWorker,
                      ),

                    ),
                  ),
                  const SizedBox(height: 16,),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: SlideEffect(
                        radius: 2.0,
                        dotWidth: 5.0,
                        dotHeight: 5.0,
                        type: SlideType.slideUnder,
                        strokeWidth: 1.5,
                        activeDotColor: ColorManager.primary,
                        dotColor: ColorManager.grey),
                  ),
                  const SizedBox(height: 23,),
                  const ServiceWidget(),
                  const SizedBox(height: 18,),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    child: const GridCategories(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

