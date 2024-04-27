// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final bool isFeatured;

  //default constructor
  CategoryModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.isFeatured,
  });

  factory CategoryModel.empty() => CategoryModel(
        id: '',
        name: '',
        imageUrl: '',
        description: '',
        isFeatured: false,
      );

  CategoryModel copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? description,
    bool? isFeatured,
    List<String>? subCategories,
    List<String>? products,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      isFeatured: isFeatured ?? this.isFeatured,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'isFeatured': isFeatured,
    };
  }

  factory CategoryModel.fromJson(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as String,
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
      description: map['description'] as String,
      isFeatured: map['isFeatured'] as bool,
    );
  }

  factory CategoryModel.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
      return CategoryModel(
        id: snapshot.id,
        name: snapshot['name'] ?? '',
        imageUrl: snapshot['imageUrl'] ?? '',
        description: snapshot['description'] ?? '',
        isFeatured: snapshot['snapshot'],
      );
    } else {
      return CategoryModel.empty();
    }
  }
}
