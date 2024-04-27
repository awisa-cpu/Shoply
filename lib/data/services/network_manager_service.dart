import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/utilities/visual_indicators/snackbars/custom_app_snackbar.dart';

class NetworkManager extends GetxController {
  //
  final networkConnectivity = Connectivity();
  late final StreamSubscription<List<ConnectivityResult>> _subscription;

  @override
  void onInit() {
    super.onInit();
    _subscription =
        networkConnectivity.onConnectivityChanged.listen(_onConnectivityCheck);
  }

  void _onConnectivityCheck(List<ConnectivityResult> result) {
    if (result.any((status) => status == ConnectivityResult.none)) {
      CustomAppSnackBar.showAppSnackBar(
          text: 'No internet connection', color: Colors.orange.shade300);
    }
  }

  Future<bool> isConnected() async {
    final connectedNetworks = await networkConnectivity.checkConnectivity();
    if (connectedNetworks.any((status) => status == ConnectivityResult.none)) {
      return false;
    } else {
      return true;
    }
  }

  @override
  void onClose() {
    super.onClose();
    _subscription.cancel();
  }
}
