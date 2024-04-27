// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ProductModel {
  final String id;
  final String name;
  final String description;
  final String price;
  final String imageUrl;
  final String categoryId;
  final String? subCategoryId;
  final List<String>? reviews;
  final List<double> availableSizes;
  final List<String>? availableColors;
  final double quantity;

  //default constructor
  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.categoryId,
    this.subCategoryId,
    this.reviews,
    required this.availableSizes,
    this.availableColors,
    required this.quantity,
  });

  ProductModel copyWith({
    String? id,
    String? name,
    String? description,
    String? price,
    String? imageUrl,
    String? categoryId,
    String? subCategoryId,
    List<String>? reviews,
    List<double>? availableSizes,
    List<String>? availableColors,
    double? quantity,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      categoryId: categoryId ?? this.categoryId,
      subCategoryId: subCategoryId ?? this.subCategoryId,
      reviews: reviews ?? this.reviews,
      availableSizes: availableSizes ?? this.availableSizes,
      availableColors: availableColors ?? this.availableColors,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'categoryId': categoryId,
      'subCategoryId': subCategoryId,
      'reviews': reviews,
      'availableSizes': availableSizes,
      'availableColors': availableColors,
      'quantity': quantity,
    };
  }

  factory ProductModel.fromJson(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as String,
      imageUrl: map['imageUrl'] as String,
      categoryId: map['categoryId'] as String,
      subCategoryId:
          map['subCategoryId'] != null ? map['subCategoryIdb'] as String : null,
      reviews: map['reviews'] != null
          ? List<String>.from((map['reviews'] as List<String>))
          : null,
      quantity: map['quantity'] as double,
      availableSizes: List<double>.from(
        (map['availableSizes'] as List<double>),
      ),
      availableColors: map['availableColors'] != null
          ? List<String>.from(map['availableColors'] as List<String>)
          : null,
    );
  }

  factory ProductModel.empty() => ProductModel(
        id: '',
        name: '',
        description: '',
        price: '',
        imageUrl: '',
        categoryId: '',
        availableSizes: List.empty(),
        quantity: 0.0,
        reviews: List.empty(),
        availableColors: List.empty(),
        subCategoryId: '',
      );

  factory ProductModel.fromSnapShot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
      return ProductModel(
        id: snapshot.id,
        name: snapshot['name'] ?? '',
        description: snapshot['description'] ?? '',
        price: snapshot['price'] ?? '',
        imageUrl: snapshot['imageUrl'] ?? '',
        categoryId: snapshot['categoryId'] ?? '',
        subCategoryId: snapshot['subCategoryId'] ?? '',
        availableSizes: snapshot['availableSizes'],
        reviews: snapshot['reviews'],
        availableColors: snapshot['availableColors'],
        quantity: snapshot['quantity'] ?? '',
      );
    } else {
      return ProductModel.empty();
    }
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl, categoryId: $categoryId, subCategoryId: $subCategoryId, reviews: $reviews, availableSizes: $availableSizes, availableColors: $availableColors, quantity: $quantity)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.imageUrl == imageUrl &&
        other.categoryId == categoryId &&
        other.subCategoryId == subCategoryId &&
        listEquals(other.reviews, reviews) &&
        listEquals(other.availableSizes, availableSizes) &&
        listEquals(other.availableColors, availableColors) &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        imageUrl.hashCode ^
        categoryId.hashCode ^
        subCategoryId.hashCode ^
        reviews.hashCode ^
        availableSizes.hashCode ^
        availableColors.hashCode ^
        quantity.hashCode;
  }
}
