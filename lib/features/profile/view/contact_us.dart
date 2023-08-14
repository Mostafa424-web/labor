import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/core/utils/custom_button.dart';
import 'package:labor_a/features/login_and_register/view/widgets/custom_text_field.dart';

import '../../../core/resources/app_strings.dart';
import '../../../core/utils/app_bar.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController messageController = TextEditingController();
    return Scaffold(
      appBar: buildAppBar(AppStrings.contactUs),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const Text(
              AppStrings.willHappy,
              style: TextStyle(
                color: Color(0xFFB4B4B4),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ).tr(),
          ),
          const SizedBox(height: 29,),
          CustomTextField(
              controller: nameController,
              title: AppStrings.name,
              hint: AppStrings.nameHint,
              suffix: IconButton(
                onPressed: () {},
                icon: Container(
                  width: 10,
                ),
              ),),
          const SizedBox(height: 18,),
          CustomTextField(
              controller: phoneController,
              title: AppStrings.phone,
              hint: AppStrings.phoneHint,
              suffix: IconButton(
                onPressed: () {},
                icon: Container(
                  width: 10,
                ),
              ),),
          const SizedBox(height: 18,),
          CustomTextField(
              controller: messageController,
              title: AppStrings.message,
              hint: AppStrings.leaveMessage,
              maxLines: 5,
              suffix: IconButton(
                onPressed: () {},
                icon: Container(
                  width: 10,
                ),
              ),),
          const SizedBox(height: 56,),
          CustomButton(clicked: true, content: AppStrings.save, onPress: (){})
        ],
      ),
    );
  }
}
