import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/core/resources/app_styles.dart';

import '../../../../core/resources/app_strings.dart';

Column trailingListTile() {
  return Column(
    children: [
       Text(
        AppStrings.price,
        textAlign: TextAlign.center,
        style: AppStyles.style10,
      ).tr(),
       Text(
        AppStrings.riyal,
        style: AppStyles.style14,
      ).tr()
    ],
  );
}