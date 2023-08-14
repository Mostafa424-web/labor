import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/features/login_and_register/view/widgets/custom_text_password.dart';
import 'package:labor_a/features/main/view_model/app_cubit.dart';

import '../../../core/resources/app_color.dart';
import '../../../core/resources/app_strings.dart';
import '../../../core/utils/custom_button.dart';

import '../view_model/login_register_cubit.dart';
import 'forget_password_screen.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key, required this.veificationCode}) : super(key: key);

  final String veificationCode;
  @override
  Widget build(BuildContext context) {
    TextEditingController passController = TextEditingController();
    TextEditingController pass1Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const Text(
              AppStrings.reEnterPass,
              style: TextStyle(
                color: Color(0xFF1B1D21),
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
            const SizedBox(height: 14,),
            Text(
              AppStrings.enterPassConfirm,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorManager.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ).tr(),
            const SizedBox(height: 28,),
            CustomTextFieldPassword(
              controller: passController,
              title: AppStrings.passNumber,
              hint: AppStrings.enterPhone,
              suffix: LoginRegisterCubit.get(context).changeVisiblePassword(), isVisible: LoginRegisterCubit.get(context).isVisible,
            ),
            CustomTextFieldPassword(
              controller: pass1Controller,
              title: AppStrings.confirmPass,
              hint: AppStrings.enterPhone,
              suffix: LoginRegisterCubit.get(context).changeVisiblePassword(), isVisible: LoginRegisterCubit.get(context).isVisible,
            ),
            const SizedBox(height: 47,),
            CustomButton(clicked: true, content: AppStrings.log, onPress: (){
              AppCubit.get(context).goNext(const ForgetPasswordScreen(), context);
            }),
          ],
        ),
      ),
    );
  }
}
