import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/features/main/view_model/app_cubit.dart';

import '../../../../generated/assets.dart';
import '../../../../core/resources/app_strings.dart';
import '../edit_profile.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
          vertical: 24
      ),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Image.asset(Assets.imagesPerson,width: 85,height: 85,),
          const SizedBox(height: 8,),
          const Text(
            AppStrings.nameHint,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ).tr(),
          const SizedBox(height: 8,),
          InkWell(
            onTap: (){
              AppCubit.get(context).goNext(const EditProfile(), context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              decoration: ShapeDecoration(
                color: const Color(0xFF5FD068),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.75, color: Color(0xFF5FD068)),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: const Text(
                AppStrings.edit,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ).tr(),
            ),
          ),
          const SizedBox(height: 8,),
        ],
      ),
    );
  }
}
