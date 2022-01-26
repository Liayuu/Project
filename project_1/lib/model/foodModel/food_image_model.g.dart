// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodImageModel _$FoodImageModelFromJson(Map<String, dynamic> json) =>
    FoodImageModel(
      id: json['id'] as int?,
      foodId: json['foodId'] as int?,
      imageLink: json['imageLink'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$FoodImageModelToJson(FoodImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'foodId': instance.foodId,
      'imageLink': instance.imageLink,
      'status': instance.status,
    };
