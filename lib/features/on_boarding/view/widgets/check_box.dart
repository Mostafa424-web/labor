import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_color.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/app_styles.dart';
import '../terms_and_conditions.dart';

class CheckBoxTerms extends StatefulWidget {
   const CheckBoxTerms({Key? key,}) : super(key: key);

  @override
  State<CheckBoxTerms> createState() => _CheckBoxTermsState();
}

class _CheckBoxTermsState extends State<CheckBoxTerms> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.byRegister,
          style: AppStyles.style14,
        ).tr(),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsAndConditions(),),);
          },
          child: Text(
            AppStrings.termsAndConditions,
            style: TextStyle(
              color: ColorManager.primary,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ).tr(),
        ),
      ],
    );
  }
}
