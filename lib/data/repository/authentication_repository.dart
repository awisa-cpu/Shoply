import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shoply/features/authentication/views/sign_in/sign_in_view.dart';
import 'package:shoply/utilities/exceptions/custom_firebase_auth_exception.dart';
import 'package:shoply/utilities/exceptions/custom_format_exception.dart';
import 'package:shoply/utilities/exceptions/custom_platform_exception.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  ///variables
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? get currentUser => _auth.currentUser;
  final storage = GetStorage();

  ///methods
  @override
  void onReady() {
    super.onReady();
    screenRedirect();
  }

//screen redirect based on the state of the user
  void screenRedirect() {
    storage.writeIfNull('isFirstTime', true);
    final storageVar = storage.read('isFirstTime');

    storageVar != true
        ? Get.offAll(() => const Navigator())
        : Get.offAll(() => const SignInView());
  }

  //sign up
  Future<UserCredential> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credentail = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credentail;
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }

  //sign in
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }

//sign in with google
  Future<UserCredential> signInWithGoogle() async {
    try {
      final userGoogleAccount = await GoogleSignIn().signIn();
      final userSignInAuth = await userGoogleAccount?.authentication;
      final oAuthCredential = GoogleAuthProvider.credential(
        idToken: userSignInAuth?.idToken,
        accessToken: userSignInAuth?.accessToken,
      );
      return _auth.signInWithCredential(oAuthCredential);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }

  //verify email
  Future<void> sendEmailVerification() async {
    try {
      await currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }

  //forgotpassword
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }

  //confirm password reset
  Future<void> confirmPasswordReset(String code, String newPassword) async {
    try {
      await _auth.confirmPasswordReset(code: code, newPassword: newPassword);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthExc(code: e.code).message;
    } on PlatformException catch (e) {
      throw CustomPlatformExc(code: e.code).message;
    } on FormatException catch (e) {
      throw CustomFormatExc(code: e.message).message;
    } catch (e) {
      throw 'Something went wrong! Please try again';
    }
  }
}
