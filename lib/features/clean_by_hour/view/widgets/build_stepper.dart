import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/clean_hour_cubit.dart';

BlocProvider<CleanHourCubit> buildStepper(BuildContext context,StepperType type) {
  final canCancel = CleanHourCubit.get(context).activeCurrentStep > 0;
  final canContinue = CleanHourCubit.get(context).activeCurrentStep < 2;
  return BlocProvider(
    create: (context) => CleanHourCubit(),
    child: BlocListener<CleanHourCubit, CleanHourState>(
      listener: (context, state) {},
      child: CupertinoStepper(
        physics: const BouncingScrollPhysics(),
          type: type,
          currentStep: CleanHourCubit.get(context).activeCurrentStep,
          onStepTapped: (step) => CleanHourCubit.get(context).onTapStepper(step),
          onStepCancel: canCancel ? () => CleanHourCubit.get(context).cancelStep() : null,
          onStepContinue: canContinue
              ? () => CleanHourCubit.get(context).continueStep()
              : null,
          steps: CleanHourCubit.get(context).stepList(),
      ),
    )
  );
}
