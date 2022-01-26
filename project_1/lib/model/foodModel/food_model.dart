import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'food_model.g.dart';

@JsonSerializable()
class FoodModel {
  int? id;
  String image;
  String? foodName;
  double? price;
  String? delivInfo;
  String? returnPolicy;
  int? categoryId;
  FoodModel({
    required this.id,
    required this.image,
    required this.foodName,
    required this.price,
    required this.delivInfo,
    required this.returnPolicy,
    required this.categoryId,
  });

  FoodModel copyWith({
    int? id,
    String? image,
    String? foodName,
    double? price,
    String? delivInfo,
    String? returnPolicy,
    int? categoryId,
  }) {
    return FoodModel(
      id: id ?? this.id,
      image: image ?? this.image,
      foodName: foodName ?? this.foodName,
      price: price ?? this.price,
      delivInfo: delivInfo ?? this.delivInfo,
      returnPolicy: returnPolicy ?? this.returnPolicy,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'foodName': foodName,
      'price': price,
      'delivInfo': delivInfo,
      'returnPolicy': returnPolicy,
      'categoryId': categoryId,
    };
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      id: map['id']?.toInt(),
      image: map['image'],
      foodName: map['foodName'],
      price: map['price']?.toDouble(),
      delivInfo: map['delivInfo'],
      returnPolicy: map['returnPolicy'],
      categoryId: map['categoryId']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodModel.fromJson(String source) =>
      FoodModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FoodModel(id: $id, image: $image, foodName: $foodName, price: $price, delivInfo: $delivInfo, returnPolicy: $returnPolicy, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FoodModel &&
        other.id == id &&
        other.image == image &&
        other.foodName == foodName &&
        other.price == price &&
        other.delivInfo == delivInfo &&
        other.returnPolicy == returnPolicy &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        image.hashCode ^
        foodName.hashCode ^
        price.hashCode ^
        delivInfo.hashCode ^
        returnPolicy.hashCode ^
        categoryId.hashCode;
  }
}
