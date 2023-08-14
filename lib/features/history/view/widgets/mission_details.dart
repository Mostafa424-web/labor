import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/core/resources/app_styles.dart';
import 'package:labor_a/features/history/view/widgets/rating.dart';
import 'package:labor_a/features/history/view/widgets/trailing_list_tile.dart';

import '../../../../generated/assets.dart';
import '../../../../core/resources/app_strings.dart';

class MissionDetails extends StatelessWidget {
  const MissionDetails({
    super.key, required this.text, required this.color,
  });

  final String text;
  final int color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF5FD068)),
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0CCECECE),
            blurRadius: 24,
            offset: Offset(0, 6),
            spreadRadius: 6,
          )
        ],
      ),
      child: Column(
        children: [
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  AppStrings.cleanHour,
                  style: AppStyles.style16,
                ).tr(),
              ],
            ),
            subtitle: Text(
              AppStrings.phoneHint,
              style: AppStyles.style10.copyWith(
                color: Colors.black.withOpacity(0.3)
              ),
            ).tr(),
            trailing: Container(
              width: 91,
              height: 31,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: ShapeDecoration(
                color: Color(color),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                text,
                style: AppStyles.style12.copyWith(
                  color: Colors.white
                ),
              ).tr(),
            ),
          ),
          Divider(endIndent: MediaQuery.sizeOf(context).width * 0.05,
            indent:  MediaQuery.sizeOf(context).width * 0.05,),
          ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    AppStrings.unitedCompany,
                    style: AppStyles.style16,
                  ).tr(),
                  const Rating(),
                  const SizedBox(height: 8,),
                ],
              ),
              leading: Image.asset(Assets.imagesLogoCompany),
              trailing:   Text(
                AppStrings.date,
                textAlign: TextAlign.center,
                style: AppStyles.style12,
              ).tr()
          ),
          Divider(endIndent: MediaQuery.sizeOf(context).width * 0.05,
            indent:  MediaQuery.sizeOf(context).width * 0.05,),
          ListTile(
            title:  Text(
              AppStrings.contractWorker,
              textAlign: TextAlign.center,
              style:AppStyles.style12,
            ).tr(),
            trailing:  trailingListTile(),
          )
        ],
      ),
    );
  }

}
