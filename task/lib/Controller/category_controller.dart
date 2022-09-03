// ignore: file_names

import 'package:task/Controller/product_controller.dart';
import 'package:task/model/category_model.dart';
import 'package:task/model/exported_packages.dart';

class CategoryController extends GetxController {
  List? list = [];
  int index = 0;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void selectedCategory({var index, var id}) {
    this.index = index;

    update();
    productController.setCategoryId(id: id);

  }

  // ignore: non_constant_identifier_names
  Future<List> getData() async {
    //From Backend But There No Api send in task
    //  PostServices().sendData(route: getCategory,body: mapLang);
    // var dataList = json.decode(PostServices.responseBody);
    // list = dataList.map((data) => CategoryModel.fromMap(data));

    //NO Category Api I will make it local data
    list = [
      //First Brand
      CategoryModel(
          id: "0",
          nameEn: "All",
          nameAr: "الكل",
          branId: "1-1---1-1-1---1--5~3D9D161F-AEED-4ABD-A651-4B2E86ABBB8C"),
      CategoryModel(
          id: "2",
          nameEn: "Blazers",
          nameAr: "Blazers",
          branId: "1-1---1-1-1---1--5~3D9D161F-AEED-4ABD-A651-4B2E86ABBB8C"),
      CategoryModel(
          id: "3",
          nameEn: "Jackets",
          nameAr: "Jackets",
          branId: "1-1---1-1-1---1--5~3D9D161F-AEED-4ABD-A651-4B2E86ABBB8C"),
      CategoryModel(
          id: "4",
          nameEn: "Dress",
          nameAr: "Dress",
          branId: "1-1---1-1-1---1--5~3D9D161F-AEED-4ABD-A651-4B2E86ABBB8C"),
    ];

    update();
    return list!;
  }
}
