import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoply/data/repository/authentication_repository.dart';
import 'package:shoply/firebase_options.dart';
import 'app.dart';

void main() async {
  //init
  WidgetsFlutterBinding.ensureInitialized();

  //init local storage
  await initStorage();

  //init firebase
  await initFirebase();
  runApp(const App());
}

Future<void> initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((_) => Get.put(AuthenticationRepository()));
}

Future<void> initStorage() async {
  await GetStorage.init();
}
