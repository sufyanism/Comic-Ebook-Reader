import 'package:comics/features/category/view_model/category_controller.dart';
import 'package:get/get.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesController>(() => CategoriesController());
  }
}
