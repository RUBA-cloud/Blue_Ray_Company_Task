import 'package:flutter/material.dart';
import 'package:task/helpers/colors.dart';
import 'package:task/model/exported_packages.dart';
import 'package:task/model/product_model.dart';

class ProductController extends GetxController {
// ignore: deprecated_member_use
  var list = [].obs;
  var colors = [].obs;

  @override
  void onInit() {
    getData(id: '0');

    super.onInit();
  }

  Future getData({required String id}) async {
    //Backend But The Category Api is not Found
    Map data = {"lang": "ar", "category_id": id};

    await PostServices().sendData(route: getProducts, body: data);
    if (PostServices.responseBody != null) {
      var dataList = json.decode(PostServices.responseBody);
      list.value = dataList["products_data"]
          .map((e) => ProductModel.fromMap(e))
          .toList();

      colors.value = List.generate(list.length, (index) => colorWhite);
    } else {
      list.value = [];
    }

    update();
  }

  void setCategoryId({var id}) {
    getData(id: id);
  }

  void addToFaviorate(int index) {
    colors[index] = redColor;
    update();
    Get.snackbar(
      "Faviorate Added ",
      "Faviorate Has Been Added",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.lightBlue,
    );
    update();
  }
}
