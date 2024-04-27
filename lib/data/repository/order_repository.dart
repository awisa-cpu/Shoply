import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shoply/data/repository/authentication_repository.dart';
import 'package:shoply/features/store/models/order_model.dart';
import 'package:shoply/utilities/exceptions/custom_firebase_exception.dart';
import 'package:shoply/utilities/exceptions/custom_format_exception.dart';
import 'package:shoply/utilities/exceptions/custom_platform_exception.dart';

class OrderRepository extends GetxController {
  static OrderRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;
  final authRepo = AuthenticationRepository.instance;

  //create order
  Future<void> createOrder(OrderModel orderModel) async {
    try {
      await _db
          .collection('Orders')
          .doc(authRepo.currentUser?.uid)
          .set(orderModel.toJson());
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } on SocketException catch (_) {
      //handle
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }
}
