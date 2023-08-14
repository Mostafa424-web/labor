import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../login_and_register/view/login_screen.dart';
import '../../../main/view_model/app_cubit.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image,title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 27.0),
          child: TextButton(onPressed: (){
            AppCubit.get(context).goNext(const LoginScreen(), context);
          },
              child: Align(
                alignment: Alignment.topLeft,
                child:  const Text(
                  AppStrings.skip,
                  style: TextStyle(
                    color: Color(0xFFF5DF99),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ).tr(),
              )
          ),
        ),
        Image.asset(image),
        const SizedBox(height: 57,),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 34,
            fontWeight: FontWeight.w500,
          ),
        ).tr(),
        Text(
          subTitle,
         textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ).tr(),
      ],
    );
  }
}
