import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/core/resources/app_strings.dart';

import '../../../core/utils/app_bar.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(AppStrings.termsAndConditions),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return  ListTile(
            title: const Text(AppStrings.terms1,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
            leading: const CircleAvatar(
              radius: 4,
              backgroundColor: Colors.black,
            ),
            trailing: Container(width: 10,),
          );
        },
      ),
    );
  }
}
