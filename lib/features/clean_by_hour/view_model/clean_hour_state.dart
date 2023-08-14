part of 'clean_hour_cubit.dart';

@immutable
abstract class CleanHourState {}

class CleanHourInitial extends CleanHourState {}

class SelectNewItem extends CleanHourState {}

class ChangeCurrentStep extends CleanHourState {}

class CancelCurrentStep extends CleanHourState {}
class ContinueCurrentStep extends CleanHourState {}