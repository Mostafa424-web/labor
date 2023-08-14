import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/features/profile/view/widgets/custom_complete_payment_text.dart';

import '../../../generated/assets.dart';
import '../../../core/resources/app_strings.dart';
import '../../../core/utils/app_bar.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(AppStrings.notification),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CustomCompletePaymentText(),
            const SizedBox(height: 8,),
            Card(
              child: ListTile(
                  title: const Text(
                    AppStrings.reminder,
                    style: TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ).tr(),
                  subtitle: Text(
                    AppStrings.sendWorkers,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ).tr(),
                  leading: Image.asset(Assets.imagesReminder,),
                  trailing: Text(
                    '2hr',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )
              ),
            ),
            const SizedBox(height: 8,),
            Card(
              child: ListTile(
                  title: const Text(
                    AppStrings.orderRefuse,
                    style: TextStyle(
                      color: Color(0xFF1B1D21),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ).tr(),
                  subtitle: Text(
                    AppStrings.orderRefuseDetails,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ).tr(),
                  leading: Image.asset(Assets.imageRefuse,),
                  trailing: Text(
                    '1hr',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


