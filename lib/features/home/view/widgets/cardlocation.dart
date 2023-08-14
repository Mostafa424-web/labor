import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../main/view_model/app_cubit.dart';
import '../addresss.dart';


class CardLocation extends StatelessWidget {
  const CardLocation({
    super.key, required this.widget,
  });
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        AppCubit.get(context).goNext(const Addresses(), context);
      },
      child: Card(
        color: const Color(0xFF4B8673),
        child: ListTile(
          onTap: (){
            AppCubit.get(context).goNext(widget, context);
          },
          leading: Image.asset(
            Assets.imagesLocation,
          ),
          title: Text(
            AppStrings.location,
            style: TextStyle(
              color: Colors.white.withOpacity(0.4000000059604645),
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ).tr(),
          subtitle: const Text(
            AppStrings.locationDesc,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ).tr(),
        ),
      ),
    );
  }
}