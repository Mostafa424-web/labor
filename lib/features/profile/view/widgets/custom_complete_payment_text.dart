import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/features/main/view_model/app_cubit.dart';
import 'package:labor_a/features/profile/view/order_complete.dart';

import '../../../../generated/assets.dart';
import '../../../../core/resources/app_color.dart';
import '../../../../core/resources/app_strings.dart';

class CustomCompletePaymentText extends StatelessWidget {
  const CustomCompletePaymentText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
              title: const Text(
                AppStrings.orderConfirm,
                style: TextStyle(
                  color: Color(0xFF1B1D21),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ).tr(),
              subtitle: Text(
                AppStrings.orderComplete,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ).tr(),
              leading: Image.asset(Assets.imagesDone,),
              trailing: Text(
                '1hr',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )
          ),
          Divider(endIndent: MediaQuery.sizeOf(context).width * 0.05,
            indent:  MediaQuery.sizeOf(context).width * 0.05,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                AppCubit.get(context).goNext(const OrderCompleteScreen(), context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.completePayment,
                    style: TextStyle(
                      color: ColorManager.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ).tr(),
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: ColorManager.primary,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}