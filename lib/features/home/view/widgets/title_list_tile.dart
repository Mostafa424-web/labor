import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class TitleListTile extends StatelessWidget {
  const TitleListTile({
    super.key, required this.title1, required this.title2,
  });

  final String title1, title2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Text(
          title1,
          style: const TextStyle(
            color: Color(0xFFF4F4F4),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ).tr(),
         Text(
          title2,
          style: const TextStyle(
            color: Color(0xFFF4F4F4),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ).tr(),
      ],
    );
  }
}