import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final String id;
  final String firstName;
  final String lastName;
  final String userName;
  final String email;
  final String phoneNumber;
  final String? imageUrl;

  //default constructor
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    this.imageUrl,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
      'imageUrl': imageUrl,
    };
  }

  factory UserModel.empty() => UserModel(
        id: '',
        firstName: '',
        lastName: '',
        userName: '',
        email: '',
        phoneNumber: '',
      );

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      userName: map['userName'] as String,
      email: map['email'] as String,
      phoneNumber: map['phoneNumber'] as String,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : '',
    );
  }

  factory UserModel.fromSnapShot(DocumentSnapshot<Map<String, dynamic>> json) {
    if (json.exists && json.data() != null) {
      return UserModel(
          id: json.id,
          firstName: json['firstName'] ?? '',
          lastName: json['lastName'] ?? '',
          userName: json['userName'] ?? '',
          email: json['email'] ?? '',
          phoneNumber: json['phoneNumber'] ?? '');
    } else {
      return UserModel.empty();
    }
  }
}
