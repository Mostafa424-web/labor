import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_color.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../main/view_model/app_cubit.dart';
import '../categories.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          AppStrings.myService,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ).tr(),
        TextButton(
          onPressed: (){
            AppCubit.get(context).goNext(const Categories(), context);
          },
          child: Text(
            AppStrings.showService,
            style: TextStyle(
              color: ColorManager.primary,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ).tr(),
        ),
      ],
    );
  }
}