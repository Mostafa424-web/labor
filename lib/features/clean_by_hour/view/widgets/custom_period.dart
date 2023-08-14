import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../view_model/clean_hour_cubit.dart';

class CustomPeriod extends StatefulWidget {
  const CustomPeriod({
    super.key,
  });

  @override
  State<CustomPeriod> createState() => _CustomPeriodState();
}

class _CustomPeriodState extends State<CustomPeriod> {
    int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: CleanHourCubit().titles.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            setState(() {});
          },
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.42,
            height: 56,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1,
                    color: currentIndex == index
                        ? const Color(0xFFF5DF99)
                        : Colors.black),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  CleanHourCubit().images[index],
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  CleanHourCubit().titles[index],
                  style: TextStyle(
                    color: Colors.black
                        .withOpacity(0.20000000298023224),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ).tr()
              ],
            ),
          ),
        ),
      ),
    );
  }
}