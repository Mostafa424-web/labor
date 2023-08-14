
import 'package:flutter/material.dart';
import 'package:labor_a/features/home/view/widgets/cardlocation.dart';
import 'package:labor_a/features/home/view/widgets/select_city.dart';

import '../../../core/resources/app_strings.dart';
import '../../../core/utils/app_bar.dart';
import '../../../core/utils/custom_button.dart';
import '../../login_and_register/view/widgets/custom_text_field.dart';
import '../../on_boarding/view_model/boarding_cubit.dart';
import '../view_model/home_cubit.dart';
import 'add_address_in_map.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    TextEditingController regionController = TextEditingController();
    TextEditingController streetController = TextEditingController();
    TextEditingController buildingController = TextEditingController();
    return Scaffold(
        appBar: buildAppBar(AppStrings.addLocation),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 17),
        child: ListView(
          children: [
            const CardLocation(
              widget: AddAddressInMap(),
            ),
            const SizedBox(height: 32,),
            CustomDropSelected(
              elementTitle: AppStrings.city,
              elements: HomeCubit().cityItems,
              hintText: HomeCubit().cityItems[0],
            ),
            CustomTextField(controller: regionController, title: AppStrings.region, hint: AppStrings.alexanderSchool,
                suffix: IconButton(onPressed: (){}, icon: Container(width: 10,))),
            const SizedBox(height: 18,),
            CustomTextField(controller: streetController, title: AppStrings.street, hint: AppStrings.secondFloor,
                suffix: IconButton(onPressed: (){}, icon: Container(width: 10,))),
            const SizedBox(height: 18,),
            CustomTextField(controller: buildingController, title: AppStrings.building, hint: AppStrings.secondFloor,
                suffix: IconButton(onPressed: (){}, icon: Container(width: 10,))),
            const SizedBox(height: 56,),
            CustomButton(clicked: true, content: AppStrings.save, onPress: (){}),
        ],
        )
    )
    );
  }
}
