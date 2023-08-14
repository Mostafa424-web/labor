import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:labor_a/core/resources/app_color.dart';
import 'package:labor_a/core/resources/app_strings.dart';
import 'package:labor_a/core/utils/custom_button.dart';
import 'package:labor_a/features/home/view/addresss.dart';
import 'package:labor_a/features/home/view/widgets/cardlocation.dart';
import 'package:labor_a/features/profile/view/widgets/order_details.dart';

import '../../../core/utils/app_bar.dart';
import '../../home/view/widgets/done_dialog.dart';
import '../../login_and_register/view/widgets/custom_text_field.dart';

class OrderCompleteScreen extends StatelessWidget {
  const OrderCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController notesController = TextEditingController();
    return Scaffold(

      appBar: buildAppBar(AppStrings.orderComplete),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            const Text(
              AppStrings.orderDetails,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
            const SizedBox(height: 23,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OrderDetailsWidget(
                  title: AppStrings.order,
                  titleDetails: AppStrings.cleanHour,
                ),
                OrderDetailsWidget(
                  title: AppStrings.orderNum,
                  titleDetails: AppStrings.phoneHint,
                ),
              ],
            ),
            const SizedBox(height: 12,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OrderDetailsWidget(
                  title: AppStrings.companyName,
                  titleDetails: AppStrings.unitedCompany,
                ),
                OrderDetailsWidget(
                  title: AppStrings.orderDate,
                  titleDetails: AppStrings.date,
                ),
              ],
            ),
            const SizedBox(height: 12,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OrderDetailsWidget(
                  title: AppStrings.orderDetails,
                  titleDetails: AppStrings.contractWorker,
                ),
                OrderDetailsWidget(
                  title: AppStrings.orderStatus,
                  titleDetails: AppStrings.orderComplete,
                ),
              ],
            ),
            const SizedBox(height: 12,),
            const CardLocation(widget: Addresses()),
            const SizedBox(height: 40,),
            const Text(
              AppStrings.paymentMethods,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ).tr(),
            const SizedBox(height: 19,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(color: Color(0xFFF9FFF6),
            ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                        children: [
                          const Text(
                            AppStrings.onlinePayment,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ).tr(),
                          Container(
                            width: 8,
                            height: 4,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF5FD068),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ],
                      ),
                  ),
                  Expanded(child: Text(
                    AppStrings.onComing,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.20000000298023224),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ).tr(),),
                  const SizedBox(height: 19,),
                ],
              ),
            ),
            CreditCardWidget(
              cardNumber: '4242424242424242',
              expiryDate: '04/24',
              cardHolderName: 'John Doe',
              cvvCode: '123',
              showBackView: false,
              cardBgColor: Colors.blue,
              height: 200,
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              animationDuration: const Duration(milliseconds: 1000), onCreditCardWidgetChange: (CreditCardBrand ) {  },
            ),
            const SizedBox(height: 19,),
            Row(
              children: [
                Icon(Icons.add_circle_outline,color: ColorManager.primary,),
                const SizedBox(width: 7,),
                Text(
                  AppStrings.addOnOtherCard,
                  style: TextStyle(
                    color: ColorManager.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ).tr(),
              ],
            ),
            const SizedBox(height: 26,),
            CustomTextField(
              title: AppStrings.leaveNotes,
              hint: AppStrings.leaveNotes,
              maxLines: 5,
              suffix: IconButton(
                onPressed: (){},
                icon: Container(
                  width: 10,
                ),
              ), controller: notesController,
            ),
            const Text(
              AppStrings.addCopon,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
            Card(
              color: const Color(0xFFF9FFF6),
              child: ListTile(
                title: const Text(
                  AppStrings.coponCode,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.36,
                  ),
                ).tr(),
                trailing: Icon(
                  Icons.check_circle,
                  color: ColorManager.primary,
                ),
              ),
            ),
            const SizedBox(height: 26,),
            const Text(
              AppStrings.price,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
          const SizedBox(height: 19,),
            CustomButton(clicked: true, content: AppStrings.pay, onPress: (){
              return buildShowDialog(context);
            }),
    const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
