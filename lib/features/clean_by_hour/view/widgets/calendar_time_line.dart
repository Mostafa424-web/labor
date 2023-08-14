import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_color.dart';

class CalendarTimeLine extends StatelessWidget {
  const CalendarTimeLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CalendarTimeline(
      initialDate: DateTime(2020, 4, 20),
      firstDate: DateTime(2019, 8, 15),
      lastDate: DateTime.now(),
      onDateSelected: (date) {},
      leftMargin: 20,
      monthColor: ColorManager.grey1,
      dayColor: Colors.grey,
      activeDayColor: Colors.white,
      activeBackgroundDayColor: ColorManager.primary,
      dotsColor: const Color(0xFF333A47),
      selectableDayPredicate: (date) => date.day != 23,
      locale: 'en_ISO',
    );
  }
}