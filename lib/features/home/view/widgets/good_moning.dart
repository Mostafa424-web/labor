import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../on_boarding/view_model/boarding_cubit.dart';


class GoodMorningWidget extends StatelessWidget {
  const GoodMorningWidget({
    super.key, required this.name,
  });

  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              AppStrings.goodMorning,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ).tr(),
            Text(
              name,
              style: const TextStyle(
                color: Color(0xFFF5DF99),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
          ],
        ),
        const Text(
          AppStrings.doYouNeedHelp,
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ).tr(),
        const SizedBox(height: 28,),
      ],
    );
  }
}