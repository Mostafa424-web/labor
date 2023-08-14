import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/features/login_and_register/view/reset_password.dart';
import 'package:labor_a/features/login_and_register/view/widgets/custom_text_field.dart';

import '../../../core/resources/app_color.dart';
import '../../../core/resources/app_strings.dart';
import '../../../core/utils/custom_button.dart';
import '../../main/view_model/app_cubit.dart';
import '../../on_boarding/view_model/boarding_cubit.dart';


class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
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
              AppStrings.forgetPass,
              style: TextStyle(
                color: Color(0xFF1B1D21),
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
            const SizedBox(height: 14,),
            Text(
              AppStrings.enterPhoneConfirm,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorManager.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ).tr(),
            const SizedBox(height: 28,),
            CustomTextField(
              controller: phoneController,
              title: AppStrings.phone,
              hint: AppStrings.phoneHint,
              suffix:  IconButton(
                  icon: const Icon(
                      Icons.phone
                  ), onPressed: () {  },
              ),
            ),
            const SizedBox(height: 47,),
            CustomButton(clicked: true, content: AppStrings.send, onPress: (){
              AppCubit.get(context).goNext(const ResetPassword(veificationCode: '',), context);
            }),
          ],
        ),
      ),
    );
  }
}
