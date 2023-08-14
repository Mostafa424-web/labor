import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/core/resources/app_styles.dart';
import 'package:labor_a/features/clean_by_hour/view/widgets/worker_details.dart';
import 'package:labor_a/features/clean_by_hour/view_model/clean_hour_cubit.dart';
import 'package:labor_a/features/history/view/widgets/rating.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../../generated/assets.dart';
import '../../../about_company/view/about_company.dart';
import '../../../history/view/widgets/trailing_list_tile.dart';
import '../../../main/view_model/app_cubit.dart';
import '../../../on_boarding/view_model/boarding_cubit.dart';
import 'drop_down_half_width.dart';

class CompanyPreview extends StatelessWidget {
  const CompanyPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        AppCubit.get(context).goNext(const AboutCompany(), context);
      },
      child: Container(
        color: const Color(0xFFF9FFF6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              AppStrings.filter,
              style: AppStyles.style16,
            ).tr(),
            const Row(
              children: [
                DropDownHalfWidth(content: AppStrings.price,),
                SizedBox(height: 4,),
                DropDownHalfWidth(content: AppStrings.evaluation,),
              ],
            ),
            const SizedBox(height: 34,),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.6,
              child: ListView.separated(
                itemCount: CleanHourCubit.get(context).companies.length,
                separatorBuilder: (context, index) {
                  return BoardingCubit.get(context).buildSizedBox(16);
                },
                itemBuilder: (context, state) =>  Container(
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
                              AppStrings.unitedCompany,
                              style: AppStyles.style16,
                            ).tr(),
                            const Rating(),
                            const SizedBox(height: 8,),
                          ],
                        ),
                        subtitle:  Text(
                          AppStrings.companyDesc,
                          textAlign: TextAlign.right,
                          style: AppStyles.style10,
                        ).tr(),
                        leading: Image.asset(Assets.imagesLogoCompany),
                        trailing: trailingListTile(),
                      ),
                      const WorkerDetails()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}