import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_a/features/clean_by_hour/view/widgets/build_stepper.dart';


import '../../../core/resources/app_strings.dart';
import '../../../core/utils/custom_button.dart';
import '../view_model/clean_hour_cubit.dart';

class CleanByHour extends StatefulWidget {
  const CleanByHour({Key? key}) : super(key: key);

  @override
  State<CleanByHour> createState() => _CleanByHourState();
}

class _CleanByHourState extends State<CleanByHour> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CleanHourCubit(),
      child: BlocConsumer<CleanHourCubit, CleanHourState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: const BackButton(
                color: Colors.black,
              ),
            ),
            body: SafeArea(child: buildStepper(context , StepperType.horizontal)),
            floatingActionButton: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                  clicked: true, content: AppStrings.next, onPress: () {
                    CleanHourCubit.get(context).continueStep();
              }),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation
                .centerFloat,
          );
        },
      ),
    );
  }

}


