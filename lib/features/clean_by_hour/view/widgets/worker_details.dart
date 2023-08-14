import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/app_styles.dart';

class WorkerDetails extends StatelessWidget {
  const WorkerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'كينيا',
            style:AppStyles.style14,
          ),
          Row(
            children: [
              const Icon(Icons.alarm),
              Text(
                '4 ساعات',
                style: AppStyles.style14,
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.cleaning_services),
              Text(
                AppStrings.cleanHour,
                style: AppStyles.style14,
              ).tr(),
            ],
          ),
        ],
      ),
    );
  }
}
