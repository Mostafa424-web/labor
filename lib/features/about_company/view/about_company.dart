import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/features/about_company/view/widgets/custom_list_tile.dart';
import 'package:labor_a/features/about_company/view/widgets/evaluation_company.dart';
import 'package:labor_a/features/login_and_register/view/widgets/custom_text_field.dart';
import 'package:labor_a/core/resources/app_strings.dart';
import 'package:labor_a/core/resources/app_styles.dart';

import '../../../core/utils/app_bar.dart';
import '../../../generated/assets.dart';


class AboutCompany extends StatelessWidget {
  const AboutCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController commentController = TextEditingController();
    return Scaffold(
      appBar: buildAppBar(AppStrings.aboutCompany),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Container(height: 100,
                alignment: Alignment.centerRight,
                width: 100,child: Image.asset(Assets.imagesLogoCompany,)),
             Text(
              AppStrings.unitedCompany,
              style: AppStyles.style22,
            ).tr(),
            const EvaluationCompany(),
            const SizedBox(height: 22,),
            Text(
              AppStrings.companyDesc,
              textAlign: TextAlign.right,
              style: AppStyles.style16.copyWith(
                color: Colors.black.withOpacity(0.5)
              ),
            ).tr(),
            const SizedBox(height: 22,),
            Text(
              AppStrings.comments,
              style: TextStyle(
                color: Colors.black.withOpacity(0.20000000298023224),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
            const SizedBox(height: 25,),
            const CustomListTileWidget(),
            const SizedBox(height: 20,),
            const CustomListTileWidget(),
            const SizedBox(height: 70,),
            CustomTextField(
              controller: commentController,
              title: AppStrings.addComment,
              hint: AppStrings.leaveComment,
              suffix: IconButton(
                onPressed: () {},
                icon: Container(
                  width: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


