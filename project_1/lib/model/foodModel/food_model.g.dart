// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => FoodModel(
      id: json['id'] as int?,
      image: json['image'] as String,
      foodName: json['foodName'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      delivInfo: json['delivInfo'] as String?,
      returnPolicy: json['returnPolicy'] as String?,
      categoryId: json['categoryId'] as int?,
    );

Map<String, dynamic> _$FoodModelToJson(FoodModel instance) => <String, dynamic>{
      'id': instance.id,
      'foodName': instance.foodName,
      'price': instance.price,
      'delivInfo': instance.delivInfo,
      'returnPolicy': instance.returnPolicy,
      'categoryId': instance.categoryId,
    };
