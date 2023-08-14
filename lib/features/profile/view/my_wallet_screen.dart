import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/app_strings.dart';
import '../../../core/utils/app_bar.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(AppStrings.myWallet),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0,vertical: 31),
        child: ListView(
          children: [
            Card(
            color: const Color(0xFF4B8673),
              child: ListTile(
                title: const Text(
                   AppStrings.myBalance,
                  style: TextStyle(
                    color: Color(0xFFDFDFDF),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ).tr(),
                subtitle: const Text(
                  AppStrings.riyal,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ).tr(),
                leading: const Icon(
                  Icons.wallet
                ),
              ),
            ),
            const SizedBox(height: 37,),
            Card(
              color: const Color(0xFF4B8673),
              child: ListTile(
                title: Container(
                  width: 102,
                  height: 34,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF5FD068),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text(
                    AppStrings.balanceAddComplete,
                    style: TextStyle(
                      color: Color(0xFFF9FFF6),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ).tr(),
                ),
                subtitle: const Text(
                  AppStrings.addBalanceDesc,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFB4B4B4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ).tr(),
                trailing: const Text(
                  '2 hr',
                  style: TextStyle(
                    color: Color(0xFFB4B4B4),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.30,
                  ),
                )
              ),
            ),
            const SizedBox(height: 37,),
            Card(
              color: const Color(0xFF4B8673),
              child: ListTile(
                  title: Container(
                    width: 102,
                    height: 34,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFDF4C4C),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text(
                      AppStrings.balanceAddComplete,
                      style: TextStyle(
                        color: Color(0xFFF9FFF6),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ).tr(),
                  ),
                  subtitle: const Text(
                    AppStrings.addBalanceDesc,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFB4B4B4),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ).tr(),
                  trailing: const Text(
                    '2 hr',
                    style: TextStyle(
                      color: Color(0xFFB4B4B4),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.30,
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
