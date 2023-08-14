import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/app_styles.dart';
import '../../../../generated/assets.dart';

class CustomListTileWidget extends StatelessWidget {
  const CustomListTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        AppStrings.mostafa,
        style: AppStyles.style14.copyWith(
            color: Colors.black
        ),
      ).tr(),
      leading: Image.asset(Assets.imagesPerson,width: 35,height: 35,),
      subtitle: Text(
        AppStrings.commentDetails,
        style: AppStyles.style14,
      ).tr(),
    );
  }
}