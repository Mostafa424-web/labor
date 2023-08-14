
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../home/view/add_address_in_map.dart';
import '../../../home/view/widgets/cardlocation.dart';
import '../../../home/view/widgets/select_city.dart';
import '../../../home/view_model/home_cubit.dart';
import 'calendar_time_line.dart';

class BuildStep3 extends StatelessWidget {
  const BuildStep3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CardLocation(widget: AddAddressInMap()),
        const SizedBox(height: 18,),
        CustomDropSelected(
          elementTitle: AppStrings.numOfVisit,
          elements: HomeCubit().numHours,
          hintText: HomeCubit().numHours[0],
        ),
        const SizedBox(height: 22,),
        const Text(
          AppStrings.selectDateStart,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ).tr(),
        const SizedBox(height: 32,),
        const CalendarTimeLine(),
        const SizedBox(height: 23,),
        const Text(
          AppStrings.selectHour,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFB4B4B4),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ).tr(),
        const SizedBox(height: 33,),
      ],
    );
  }
}
