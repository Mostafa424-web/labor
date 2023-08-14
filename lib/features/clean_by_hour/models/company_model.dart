import 'package:equatable/equatable.dart';

class CompanyModel extends Equatable{
  final String companyName, logoImage, companyDesc, price;

  const CompanyModel({
    required this.companyName,required this.logoImage,required this.companyDesc,required this.price
});


  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      companyName: json["companyName"],
      logoImage: json["logoImage"],
      companyDesc: json["companyDesc"],
      price: json["price"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "companyName": companyName,
      "logoImage": logoImage,
      "companyDesc": companyDesc,
      "price": price,
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    companyName,
    companyDesc,
    logoImage,
    price
  ];
}