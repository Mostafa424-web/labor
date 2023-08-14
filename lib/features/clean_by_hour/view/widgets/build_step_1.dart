import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources/app_strings.dart';

import '../../../home/view/widgets/select_city.dart';
import '../../../home/view_model/home_cubit.dart';
import 'custom_period.dart';

class BuildStep1 extends StatelessWidget {
  const BuildStep1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => HomeCubit(),
  child: BlocBuilder<HomeCubit, HomeState>(
  builder: (context, state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.period,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ).tr(),
        const SizedBox(height: 14,),
        const CustomPeriod(),
        const SizedBox(height: 16,),
        CustomDropSelected(
          elementTitle: AppStrings.numHours,
          elements: HomeCubit.get(context).numHours,
          hintText: HomeCubit.get(context).numHours[0],
        ),
        CustomDropSelected(
          elementTitle: AppStrings.nationality,
          elements: HomeCubit.get(context).nationality,
          hintText: HomeCubit.get(context).nationality[0],
        ),
        CustomDropSelected(
          elementTitle: AppStrings.city,
          elements: HomeCubit.get(context).cityItems,
          hintText: HomeCubit.get(context).cityItems[0],
        ),
      ],
    );
  },
),
);
  }
}