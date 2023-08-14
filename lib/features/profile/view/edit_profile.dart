import 'package:flutter/material.dart';
import 'package:labor_a/features/login_and_register/view_model/login_register_cubit.dart';

import '../../../core/resources/app_strings.dart';
import '../../../core/utils/app_bar.dart';
import '../../../core/utils/custom_button.dart';
import '../../../generated/assets.dart';
import '../../login_and_register/view/widgets/custom_text_field.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      appBar: buildAppBar(AppStrings.profile),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
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
            child: Stack(
              children: [
                Center(child: Image.asset(Assets.imagesPerson,width: 85,height: 85,)),
                const Center(
                  child: Icon(
                    Icons.photo_camera_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 29,),
          CustomTextField(
            controller: nameController,
            title: AppStrings.fullName,
            hint: AppStrings.nameHint,
            suffix: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline_outlined
              ),
            ),),
          const SizedBox(height: 18,),
          CustomTextField(
            controller: phoneController,
            title: AppStrings.phone,
            hint: AppStrings.phoneHint,
            suffix: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone
              ),
            ),),
          const SizedBox(height: 18,),
          CustomTextField(
            controller: passController,
            title: AppStrings.passNumber,
            hint: AppStrings.phoneHint,
            suffix:
                LoginRegisterCubit.get(context).changeVisiblePassword()
          ),
          const SizedBox(height: 56,),
          CustomButton(clicked: true, content: AppStrings.save, onPress: (){})
        ],
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {  },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.delete
            ),
            Text(
              AppStrings.deleteAccount,
              style: TextStyle(
                color: Color(0xFF1B1D21),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
