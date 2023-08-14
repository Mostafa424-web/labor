import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/features/home/view/add_address.dart';
import 'package:labor_a/features/home/view/widgets/icon_location.dart';
import 'package:labor_a/features/home/view/widgets/sub_title_listTile.dart';
import 'package:labor_a/features/home/view/widgets/title_list_tile.dart';
import 'package:labor_a/features/main/view_model/app_cubit.dart';
import 'package:labor_a/core//resources/app_color.dart';

import '../../../core/resources/app_strings.dart';
import '../../../core/utils/custom_button.dart';


class Addresses extends StatelessWidget {
  const Addresses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          AppStrings.address,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ).tr(),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_circle_outline,
              color: Colors.black,
            ),
            onPressed: (){
              AppCubit.get(context).goNext(const AddAddress(), context);
            },
          ),
        ],
        leading: const BackButton(color: Colors.black,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 28),
        child: ListView(
          children: [
            Card(
              color: ColorManager.primary,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const IconLocation(),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.55,
                        child: const ListTile(
                          title: TitleListTile(
                            title1: AppStrings.city,
                            title2: AppStrings.building,
                          ),
                          subtitle: SubTitleListTile(
                            subTitle1: AppStrings.riyadh,
                            subTitle2: AppStrings.secondFloor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        child: const ListTile(
                          title: TitleListTile(
                            title1: AppStrings.street,
                            title2: AppStrings.region,
                          ),
                          subtitle: SubTitleListTile(
                            subTitle1: AppStrings.secondFloor,
                            subTitle2: AppStrings.alexanderSchool,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomButton(clicked: true, content: AppStrings.test, onPress: (){}),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}





