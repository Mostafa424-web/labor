import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:labor_a/features/main/view_model/app_cubit.dart';
import 'package:labor_a/features/profile/model/settings_model.dart';
import 'package:labor_a/features/profile/view/contact_us.dart';
import 'package:labor_a/features/profile/view/my_wallet_screen.dart';
import 'package:labor_a/features/profile/view/notifications.dart';
import 'package:labor_a/features/profile/view/payment_card_screen.dart';
import 'package:labor_a/features/profile/view/widgets/profile_details.dart';

import '../../../core/resources/app_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SettingsModel> settings = [
       SettingsModel(
          title: AppStrings.paymentMethods,
          subTitle: AppStrings.addPayment,
          leading: const Icon(Icons.credit_card),
          trailing: const Icon(Icons.arrow_forward_ios),
          onPress: (){
            AppCubit.get(context).goNext(const PaymentCardScreen(), context);
          }
      ),
      const SettingsModel(
          title: AppStrings.location,
          subTitle: AppStrings.addLocation,
          leading: Icon(Icons.credit_card),
          trailing: Icon(Icons.arrow_forward_ios)),
      SettingsModel(
          title: AppStrings.notification,
          subTitle: AppStrings.sendNotification,
          leading: const Icon(Icons.notifications),
          trailing: const Icon(Icons.arrow_forward_ios),
          onPress: (){
            AppCubit.get(context).goNext(const Notifications(), context);
          }),
      const SettingsModel(
          title: AppStrings.selectLang,
          subTitle: '',
          leading: Icon(Icons.language),
          trailing: Icon(Icons.arrow_forward_ios)),
       SettingsModel(
          title: AppStrings.wallet,
          subTitle: AppStrings.operationDetails,
          leading: const Icon(Icons.wallet),
          trailing: const Icon(Icons.arrow_forward_ios),
          onPress: (){
            AppCubit.get(context).goNext(const MyWalletScreen(), context);
          }),
      SettingsModel(
          title: AppStrings.contactUs,
          subTitle: AppStrings.moreInfo,
          leading: const Icon(Icons.phone_in_talk),
          trailing: const Icon(Icons.arrow_forward_ios,),
      onPress: (){
            AppCubit.get(context).goNext(const ContactUs(), context);
      }),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          AppStrings.profile,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ).tr(),
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          const ProfileDetails(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.6,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: settings[index].onPress,
                    child: Card(
                      child: ListTile(
                          title: Text(
                            settings[index].title,
                            style: const TextStyle(
                              color: Color(0xFF1B1D21),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ).tr(),
                          subtitle: Text(
                            settings[index].subTitle,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ).tr(),
                          leading: settings[index].leading,
                          trailing: settings[index].trailing),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10,);
                },
                itemCount: settings.length),
          )
        ],
      ),
    );
  }
}
