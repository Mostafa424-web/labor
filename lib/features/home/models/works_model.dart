import 'package:equatable/equatable.dart';
class WorksModel extends Equatable{
  final String image, title;

  const WorksModel({
    required this.image,required this.title
});

  Map<String, dynamic> toJson() {
    return {
      "image": image,
      "title": title,
    };
  }

  factory WorksModel.fromJson(Map<String, dynamic> json) {
    return WorksModel(
      image: json["image"],
      title: json["title"],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    image,
    title
  ];
//
}