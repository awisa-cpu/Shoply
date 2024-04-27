// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class OrderModel {
  final String id;
  final String userId;
  final String orderDate;
  final String orderStatus;
  final String shippingInformation;
  final List<String> products;
  final String totalPrice;
  OrderModel({
    required this.id,
    required this.userId,
    required this.orderDate,
    required this.orderStatus,
    required this.shippingInformation,
    required this.products,
    required this.totalPrice,
  });

  factory OrderModel.empty() => OrderModel(
        id: '',
        userId: '',
        orderDate: '',
        orderStatus: '',
        shippingInformation: '',
        products: List.empty(),
        totalPrice: '',
      );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'orderDate': orderDate,
      'orderStatus': orderStatus,
      'shippingInformation': shippingInformation,
      'products': products,
      'totalPrice': totalPrice,
    };
  }

  factory OrderModel.fromJson(Map<String, dynamic> map) {
    return OrderModel(
      id: map['id'] as String,
      userId: map['userId'] as String,
      orderDate: map['orderDate'] as String,
      orderStatus: map['orderStatus'] as String,
      shippingInformation: map['shippingInformation'] as String,
      products: List.from(map['products'] as List<String>),
      totalPrice: map['totalPrice'] as String,
    );
  }

  factory OrderModel.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
      return OrderModel(
        id: snapshot.id,
        userId: snapshot['userId'] ?? '',
        orderDate: snapshot['orderDate'] ?? '',
        orderStatus: snapshot['orderStatus'] ?? '',
        shippingInformation: snapshot['shippingInformation'] ?? '',
        products: snapshot['products'],
        totalPrice: snapshot['totalPrice'] ?? '',
      );
    } else {
      return OrderModel.empty();
    }
  }

  OrderModel copyWith({
    String? id,
    String? userId,
    String? orderDate,
    String? orderStatus,
    String? shippingInformation,
    List<String>? products,
    String? totalPrice,
  }) {
    return OrderModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      orderDate: orderDate ?? this.orderDate,
      orderStatus: orderStatus ?? this.orderStatus,
      shippingInformation: shippingInformation ?? this.shippingInformation,
      products: products ?? this.products,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  String toString() {
    return 'OrderModel(id: $id, userId: $userId, orderDate: $orderDate, orderStatus: $orderStatus, shippingInformation: $shippingInformation, products: $products, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(covariant OrderModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.userId == userId &&
        other.orderDate == orderDate &&
        other.orderStatus == orderStatus &&
        other.shippingInformation == shippingInformation &&
        listEquals(other.products, products) &&
        other.totalPrice == totalPrice;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        orderDate.hashCode ^
        orderStatus.hashCode ^
        shippingInformation.hashCode ^
        products.hashCode ^
        totalPrice.hashCode;
  }
}
