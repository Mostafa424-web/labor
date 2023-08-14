
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class SubTitleListTile extends StatelessWidget {
  const SubTitleListTile({
    super.key, required this.subTitle1, required this.subTitle2,
  });

  final String subTitle1 , subTitle2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Text(
          subTitle1,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ).tr(),
         Text(
          subTitle2,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ).tr(),
      ],
    );
  }
}