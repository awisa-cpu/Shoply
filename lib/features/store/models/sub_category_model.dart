// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class SubCategoryModel {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final bool isFeatured;
  final String categoryId;
  final List<String> products;
  SubCategoryModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.isFeatured,
    required this.categoryId,
    required this.products,
  });

  SubCategoryModel copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? description,
    bool? isFeatured,
    String? categoryId,
    List<String>? products,
  }) {
    return SubCategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      isFeatured: isFeatured ?? this.isFeatured,
      categoryId: categoryId ?? this.categoryId,
      products: products ?? this.products,
    );
  }

  factory SubCategoryModel.empty() => SubCategoryModel(
        id: '',
        name: '',
        imageUrl: '',
        description: '',
        isFeatured: false,
        categoryId: '',
        products: List.empty(),
      );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'isFeatured': isFeatured,
      'categoryId': categoryId,
      'products': products,
    };
  }

  factory SubCategoryModel.fromJson(Map<String, dynamic> map) {
    return SubCategoryModel(
        id: map['id'] as String,
        name: map['name'] as String,
        imageUrl: map['imageUrl'] as String,
        description: map['description'] as String,
        isFeatured: map['isFeatured'] as bool,
        categoryId: map['categoryId'] as String,
        products: List<String>.from(
          (map['products'] as List<String>),
        ));
  }

  factory SubCategoryModel.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
      return SubCategoryModel(
        id: snapshot.id,
        name: snapshot['name'],
        imageUrl: snapshot['imageUrl'],
        description: snapshot['description'],
        isFeatured: snapshot['isFeatured'],
        categoryId: snapshot['categoryId'],
        products: snapshot['products'],
      );
    } else {
      return SubCategoryModel.empty();
    }
  }

  @override
  String toString() {
    return 'SubCategoryModel(id: $id, name: $name, imageUrl: $imageUrl, description: $description, isFeatured: $isFeatured, categoryId: $categoryId, products: $products)';
  }

  @override
  bool operator ==(covariant SubCategoryModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        other.description == description &&
        other.isFeatured == isFeatured &&
        other.categoryId == categoryId &&
        listEquals(other.products, products);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        imageUrl.hashCode ^
        description.hashCode ^
        isFeatured.hashCode ^
        categoryId.hashCode ^
        products.hashCode;
  }
}
