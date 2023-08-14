import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/core/resources/app_color.dart';
import 'package:labor_a/core/resources/app_strings.dart';
import 'package:labor_a/features/history/view/widgets/mission_details.dart';

import '../../../generated/assets.dart';
import '../../on_boarding/view_model/boarding_cubit.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text(
              AppStrings.history,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
          leading: const BackButton(
            color: Colors.black,
          ),
          bottom: TabBar(
            indicatorWeight: 4,
              labelColor: Colors.black,
              tabs: [
            Tab(
              child: const Text(
                AppStrings.current,
              ).tr(),
            ),
            Tab(
              child: const Text(
                AppStrings.previous,
              ).tr(),
            ),
          ],
          indicatorColor: Colors.green,
          unselectedLabelColor: ColorManager.grey,
          indicatorSize: TabBarIndicatorSize.label,),
        ),
        body: TabBarView(
          children: [
            const Column(
              children: [
                MissionDetails(
                  text: AppStrings.complete,
                  color: 0xFF5FD068,
                ),
                MissionDetails(
                  text: AppStrings.cancelled,
                  color: 0xFFF74D4D,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.imagesNoHistory),
                BoardingCubit.get(context).buildSizedBox(18),
                const Text(
                  AppStrings.haveNotHistory,
                  style:  TextStyle(
                    color: Color(0xFF161616),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ).tr(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

