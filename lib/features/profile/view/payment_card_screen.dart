import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:labor_a/core/utils/custom_button.dart';
import 'package:labor_a/features/main/view_model/app_cubit.dart';
import 'package:labor_a/features/profile/view/add_card.dart';

import '../../../core/resources/app_strings.dart';
import '../../../core/utils/app_bar.dart';

class PaymentCardScreen extends StatelessWidget {
  const PaymentCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(AppStrings.paymentMethods),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
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
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(padding: const EdgeInsets.symmetric(horizontal: 59,vertical: 40),
      child: CustomButton(clicked: true, content: AppStrings.addCard, onPress: (){
        AppCubit.get(context).goNext(const AddCard(), context);
      }),),
    );
  }
}
