import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shoply/data/repository/category_repository.dart';
import 'package:shoply/features/store/models/product_model.dart';
import 'package:shoply/utilities/exceptions/custom_firebase_exception.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();

  ///variables
  final _db = FirebaseFirestore.instance;
  final categoryRepo = CategoryRepository.instance;

  Future<List<ProductModel>> getProducts() async {
    try {
      final productQuerySnapshot = await _db.collection('Products').get();
      final queryDocSnapshots = productQuerySnapshot.docs;
      final products = queryDocSnapshots
          .map((productSnapshot) => ProductModel.fromSnapShot(productSnapshot))
          .toList();
      return products;
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } catch (e) {
      throw 'An error occured fetching categories';
    }
  }

  ///all methods to manage the products
  Future<List<ProductModel>> getCategoryProducts(String categoryId) async {
    try {
      final category = await categoryRepo.getCategory(categoryId);
      final allProducts = await getProducts();

      return allProducts.where((product) => product.categoryId ==category.id).toList();
    
    } on FirebaseException catch (e) {
      throw CustomFirebaseExc(code: e.code).message;
    } catch (e) {
      throw 'An error occured fetching products';
    }
  }
}
