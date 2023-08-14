import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/resources/app_strings.dart';

import '../../../generated/assets.dart';
import '../models/company_model.dart';
import '../view/widgets/build_step_1.dart';
import '../view/widgets/build_step_3.dart';
import '../view/widgets/build_step_widget.dart';
import '../view/widgets/company_preview.dart';
import '../view/widgets/custom_title_step.dart';

part 'clean_hour_state.dart';

class CleanHourCubit extends Cubit<CleanHourState> {
  CleanHourCubit() : super(CleanHourInitial());

  static CleanHourCubit get(context) => BlocProvider.of(context);

  String selectedValue = '';
  List<String> titles = [AppStrings.morning, AppStrings.evening];
  List<String> images = [Assets.imagesSun, Assets.imagesNight];

  int selectedItem = 0;
  int activeCurrentStep = 0;

  List<Step> stepList() => [
    buildStep(
        title: const CustomTitleStep(
          title: AppStrings.step1,
        ),
        state: StepState.indexed,
        isActive: CleanHourCubit().activeCurrentStep >= 0,
        content: const BuildStep1()),
    buildStep(
        title: const CustomTitleStep(
          title: AppStrings.step2,
        ),
        state: StepState.indexed,
        isActive: CleanHourCubit().activeCurrentStep >= 1,
        content: const CompanyPreview()),
    buildStep(
        title: const CustomTitleStep(
          title: AppStrings.step3,
        ),
        state: StepState.indexed,
        isActive: CleanHourCubit().activeCurrentStep >= 2,
        content: const BuildStep3()),
  ];

  void onTapStepper(int step) {
    activeCurrentStep = step;
    emit(ChangeCurrentStep());
  }

  void continueStep() {
    if (activeCurrentStep < 2) {
    ++activeCurrentStep;
    }  else if(activeCurrentStep == 2){
       activeCurrentStep;
    }
    emit(ContinueCurrentStep());
  }

  void cancelStep() {
    if (activeCurrentStep >= 2) {
      --activeCurrentStep;
    }  else if(activeCurrentStep == 0){
      activeCurrentStep;
    }
    emit(CancelCurrentStep());
  }

  List<CompanyModel> companies = [
    const CompanyModel(companyName: AppStrings.unitedCompany, logoImage: Assets.imagesLogoCompany, companyDesc: AppStrings.companyDesc, price: AppStrings.price),
    const CompanyModel(companyName: AppStrings.unitedCompany, logoImage: Assets.imagesLogoCompany, companyDesc: AppStrings.companyDesc, price: AppStrings.price),
    const CompanyModel(companyName: AppStrings.unitedCompany, logoImage: Assets.imagesLogoCompany, companyDesc: AppStrings.companyDesc, price: AppStrings.price),
    const CompanyModel(companyName: AppStrings.unitedCompany, logoImage: Assets.imagesLogoCompany, companyDesc: AppStrings.companyDesc, price: AppStrings.price),
  ];
}


