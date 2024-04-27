import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shoply/data/repository/authentication_repository.dart';
import 'package:shoply/features/authentication/models/user_model.dart';
import 'package:shoply/utilities/exceptions/custom_firebase_exception.dart';
import 'package:shoply/utilities/exceptions/custom_format_exception.dart';
import 'package:shoply/utilities/exceptions/custom_platform_exception.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  ///variables
  final _db = FirebaseFirestore.instance;
  final authRepo = AuthenticationRepository.instance;

  //save user record
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('Users').doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }

  //fetch user record
  Future<UserModel> fetchUserRecord() async {
    try {
      final userSnapShot =
          await _db.collection('Users').doc(authRepo.currentUser!.uid).get();

      return UserModel.fromSnapShot(userSnapShot);
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }

  //edit user record
  Future<void> editUserRecord(UserModel user) async {
    try {
      await _db
          .collection('Users')
          .doc(authRepo.currentUser!.uid)
          .update(user.toJson());
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }

  //edit specific user fields
  Future<void> editSpecificUserFields(Map<String, dynamic> json) async {
    try {
      await _db.collection('Users').doc(authRepo.currentUser!.uid).update(json);
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }

  //delete user record
  Future<void> deleteUserRecord(UserModel user) async {
    try {
      await _db.collection('Users').doc(authRepo.currentUser!.uid).delete();
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }

//upload profile pciture to databae
  Future<String> uploadImage(String path, XFile file) {
    try {
      final storage = FirebaseStorage.instance;
      final ref = storage.ref(path).child(file.path);
      ref.putFile(File(file.path));
      return ref.getDownloadURL();
    } catch (e) {
      throw 'Something, went wrong';
    }
  }
}
