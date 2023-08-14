import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:labor_a/features/on_boarding/view/widgets/check_box.dart';
import 'package:labor_a/core/resources/app_strings.dart';
import 'package:labor_a/core/resources/app_styles.dart';
import 'package:labor_a/core/resources/language_manager.dart';

import '../../../core/resources/app_color.dart';
import '../../../core/utils/custom_button.dart';
import '../../../generated/assets.dart';
import '../../main/view_model/app_cubit.dart';
import 'on_boarding_screens.dart';


class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  static const values = <String>[
    AppStrings.ar,
    AppStrings.en,
  ];
  String selectedValue = values.first;
  final selectedColor = Colors.green;
  final unselectedColor = Colors.black;
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(Assets.imagesLogo),
          SizedBox(height: 45.h,),
          Text(
            AppStrings.allService,
            style: AppStyles.style38,
          ).tr(),
          SizedBox(height: 20.h,),
          Text(
            AppStrings.selectLang,
            style: AppStyles.style18,
          ).tr(),
           SizedBox(height: 30.h,),
          RadioListTile<String>(
            value: AppStrings.en,
            groupValue: selectedValue,
            title: TextButton(
              onPressed: () {
                context.setLocale(englishLocale);
                selectedValue = AppStrings.en;
                setState(() {});
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  AppStrings.en,
                  style: AppStyles.style16,
                ).tr(),
              ),
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: selectedColor,
            onChanged: (value) => setState(() => selectedValue = value!),
          ),
          const Divider(),
          RadioListTile<String>(
            value: AppStrings.ar,
            groupValue: selectedValue,
            title: TextButton(
              onPressed: () {
                context.setLocale(arabicLocale);
                selectedValue = AppStrings.ar;
                setState(() {});
              },
              child: Align(
                alignment: Alignment.topRight,
                child: const Text(
                  AppStrings.ar,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ).tr(),
              ),
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: selectedColor,
            onChanged: (value) => setState(() => selectedValue = value!),
          ),
          const Divider(),
          CheckboxListTile(
            activeColor: clicked ? ColorManager.primary : ColorManager.white,
            controlAffinity: ListTileControlAffinity.leading,
            value: clicked,
            onChanged: (value) {
              setState(() {
                clicked = value!;
              });
            },
            title: const CheckBoxTerms(),
          ),
          CustomButton(
            clicked: clicked, content: AppStrings.enter, onPress: () {
            clicked ? AppCubit.get(context).goNext(const OnBoardingScreens(), context) : null;
          },),
        ]),
      ),
    );
  }

}


