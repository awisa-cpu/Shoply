
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shoply/features/store/models/category_model.dart';
import 'package:shoply/utilities/exceptions/custom_firebase_exception.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  ///variables
  final _db = FirebaseFirestore.instance;

  //fetch categories
  Future<List<CategoryModel>> getCategories() async {
    try {
      final categoryQuerySnapshots = await _db.collection('Categories').get();
      final categoryDocumentSnapshots = categoryQuerySnapshots.docs;
      final categories = categoryDocumentSnapshots
          .map((category) => CategoryModel.fromDocumentSnapshot(category))
          .toList();

      return categories;
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } catch (e) {
      throw 'An error occured fetching categories';
    }
  }

  //fetch single category
  Future<CategoryModel> getCategory(String categoryId) async {
    try {
      final categoryDocSnapshot =
          await _db.collection('Categories').doc(categoryId).get();
      return CategoryModel.fromDocumentSnapshot(categoryDocSnapshot);
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } catch (e) {
      throw 'An error occured getting category';
    }
  }

  //edit category
  Future<void> editCategory(
      String categoryId, CategoryModel updatedCategory) async {
    try {
      await _db
          .collection('Categories')
          .doc(categoryId)
          .update(updatedCategory.toJson());
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } catch (e) {
      throw 'An error occured editing category';
    }
  }

  //edit category details
  Future<void> editCategoryFields(
      String categoryId, Map<String, dynamic> updatedCategoryFields) async {
    try {
      await _db
          .collection('Categories')
          .doc(categoryId)
          .update(updatedCategoryFields);
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } catch (e) {
      throw 'An error occured editing  category fields';
    }
  }

  //delete category
  Future<void> deleteCategory(String categoryId) async {
    try {
      await _db.collection('Categories').doc(categoryId).delete();
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } catch (e) {
      throw 'An error occured deleting category';
    }
  }
}
