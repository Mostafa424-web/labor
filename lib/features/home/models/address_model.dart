import 'package:equatable/equatable.dart';

class AddressModel extends Equatable{
  final String city,building, street, region;

  const AddressModel({
    required this.city,required this.building,required this.street,required this.region
});

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      city: json["city"],
      building: json["building"],
      street: json["street"],
      region: json["region"],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    city,
    street,
    building,
    region
  ];
//


}