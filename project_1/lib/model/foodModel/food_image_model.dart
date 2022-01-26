import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'food_image_model.g.dart';

@JsonSerializable()
class FoodImageModel {
  int? id;
  int? foodId;
  String? imageLink;
  int? status;
  FoodImageModel({
    this.id,
    this.foodId,
    this.imageLink,
    this.status,
  });

  FoodImageModel copyWith({
    int? id,
    int? foodId,
    String? imageLink,
    int? status,
  }) {
    return FoodImageModel(
      id: id ?? this.id,
      foodId: foodId ?? this.foodId,
      imageLink: imageLink ?? this.imageLink,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'foodId': foodId,
      'imageLink': imageLink,
      'status': status,
    };
  }

  factory FoodImageModel.fromMap(Map<String, dynamic> map) {
    return FoodImageModel(
      id: map['id']?.toInt(),
      foodId: map['foodId']?.toInt(),
      imageLink: map['imageLink'],
      status: map['status']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodImageModel.fromJson(String source) =>
      FoodImageModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FoodImageModel(id: $id, foodId: $foodId, imageLink: $imageLink, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FoodImageModel &&
        other.id == id &&
        other.foodId == foodId &&
        other.imageLink == imageLink &&
        other.status == status;
  }

  @override
  int get hashCode {
    return id.hashCode ^ foodId.hashCode ^ imageLink.hashCode ^ status.hashCode;
  }
}
