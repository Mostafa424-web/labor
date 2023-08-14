import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    Key? key,
    required this.title,
    required this.titleDetails,
  }) : super(key: key);

  final String title;
  final String titleDetails;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFB4B4B4),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ).tr(),
          Text(
            titleDetails,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ).tr(),
        ],
      ),
    );
  }
}