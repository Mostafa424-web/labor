
import 'package:flutter/material.dart';
import 'package:labor_a/features/home/view/widgets/done_dialog.dart';

import '../../../generated/assets.dart';
import '../../../core/resources/app_strings.dart';
import '../../../core/utils/app_bar.dart';
import '../../../core/utils/custom_button.dart';

class AddAddressInMap extends StatelessWidget {
  const AddAddressInMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(AppStrings.selectLocation),
      body: Image.asset(Assets.imagesLocation,fit: BoxFit.cover,),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomButton(clicked: true, content: AppStrings.save, onPress: (){
          return buildShowDialog(context);
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DoneDialog()));

        }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }



}
