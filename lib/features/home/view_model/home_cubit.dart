import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/assets.dart';
import '../../../core/resources/app_strings.dart';
import '../models/address_model.dart';
import '../models/works_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
  List<WorksModel> works = [
    const WorksModel(image: Assets.imagesElecteric, title: AppStrings.electric),
    const WorksModel(image: Assets.imagesPlumbing, title: AppStrings.plumbing),
    const WorksModel(image: Assets.imagesConditition, title: AppStrings.condition),
    const WorksModel(image: Assets.imagesHourlyCleaning, title: AppStrings.cleanHour),
    const WorksModel(image: Assets.imagesCarWash, title: AppStrings.carWash),
    const WorksModel(image: Assets.imagesHourlyCleaning, title: AppStrings.cleanHour),
  ];

  List<AddressModel> addresses =  [];

  final List<String> cityItems = [
    'Cairo',
    'Giza',
    'Mahala',
    'Mansoura'
  ];

  final List<String> numHours = [
    '2',
    '4',
    '6',
    '8',
    '10',
    '12'
  ];

  final List<String> nationality = [
    'Egyptian',
    'American',
    'Japanese',
    'Italian'
  ];
}
