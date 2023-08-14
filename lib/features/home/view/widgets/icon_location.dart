import 'package:flutter/material.dart';

import '../../../../core/resources/app_color.dart';


class IconLocation extends StatelessWidget {
  const IconLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 42,right: 10),
          width: 50,
          height: 50,
          decoration: ShapeDecoration(
              color: ColorManager.white,
              shape: const OvalBorder()
          ),
        ),
        Positioned(
          top: 57,
          right: 25,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: ColorManager.darkYellow,
          ),
        ),
      ],
    );
  }
}