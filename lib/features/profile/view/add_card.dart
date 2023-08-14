import 'package:flutter/material.dart';
import 'package:labor_a/core/utils/custom_button.dart';

import '../../../core/resources/app_strings.dart';
import '../../../core/utils/app_bar.dart';
import '../../login_and_register/view/widgets/custom_text_field.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();
    return Scaffold(
      appBar: buildAppBar(AppStrings.addCard),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            CustomTextField(
              controller: messageController,
              title: AppStrings.name,
              hint: AppStrings.nameHint,
              suffix: IconButton(
                onPressed: () {},
                icon: Container(
                  width: 10,
                ),
              ),),
            const SizedBox(height: 23,),
            CustomTextField(
              controller: messageController,
              title: AppStrings.cardType,
              hint: AppStrings.visa,
              suffix: IconButton(
                onPressed: () {},
                icon: Container(
                  width: 10,
                ),
              ),),
            const SizedBox(height: 23,),
            CustomTextField(
              controller: messageController,
              title: AppStrings.cardNum,
              hint: AppStrings.cardNum,
              suffix: IconButton(
                onPressed: () {},
                icon: Container(
                  width: 10,
                ),
              ),),
            const SizedBox(height: 23,),
            CustomTextField(
              controller: messageController,
              title: AppStrings.cardEnd,
              hint: '01/25',
              suffix: IconButton(
                onPressed: () {},
                icon: Container(
                  width: 10,
                ),
              ),),
            const SizedBox(height: 23,),
            CustomTextField(
              controller: messageController,
              title: 'cvv',
              hint: '999',
              suffix: IconButton(
                onPressed: () {},
                icon: Container(
                  width: 10,
                ),
              ),),
            const SizedBox(height: 32,),
            CustomButton(clicked: true, content: AppStrings.save, onPress: (){}),
          ],
        ),
      ),
    );
  }
}
