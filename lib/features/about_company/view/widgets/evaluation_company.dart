import 'package:flutter/material.dart';

import '../../../../core/resources/app_styles.dart';

class EvaluationCompany extends StatelessWidget {
  const EvaluationCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          '4.5',
          textAlign: TextAlign.right,
          style:AppStyles.style18.copyWith(
              fontWeight: FontWeight.w700
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
        )
      ],
    );
  }
}
