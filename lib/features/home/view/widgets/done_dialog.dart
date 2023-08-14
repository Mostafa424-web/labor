import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

import '../../../../generated/assets.dart';
import '../../../../core/resources/app_color.dart';
import '../../../../core/resources/app_strings.dart';


Future<dynamic> buildShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return GiffyDialog.image(
        Image.asset(
          Assets.imagesDoneDialog,
          height: 80,
          width: 80,
          fit: BoxFit.contain,
        ),
        title: const Text(
          AppStrings.orderConfirm,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF1B1D21),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ).tr(),
        content: const Text(
          AppStrings.sendOkOrRefuse,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFB4B4B4),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ).tr(),
        actions: <Widget>[
          TextButton(child: Container(width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              color: ColorManager.primary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child:  Text(
              AppStrings.home,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: ColorManager.white,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
          ), onPressed: () => Navigator.pop(context)),
          TextButton(child: Container(
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Text(
              AppStrings.back,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFB4B4B4),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
          ), onPressed: () => Navigator.pop(context)),
        ],
      );
    },
  );
}