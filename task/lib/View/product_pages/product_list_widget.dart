// import 'package:flutter/material.dart';
// import 'package:task/Controller/product_controller.dart';
// import 'package:task/helpers/colors.dart';
// import 'package:task/helpers/icons.dart';
// import 'package:task/model/exported_packages.dart';
// import 'package:task/model/product_model.dart';

// class ProductListWidget extends GetView<ProductController> {
//   const ProductListWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final double itemHeight =
//         (MediaQuery.of(context).size.height - kToolbarHeight - 24) / 2;
//     final double itemWidth = MediaQuery.of(context).size.width / 2;
// return controller.obs()
//   }

//       // child: GetBuilder<ProductController>(builder: (controller) {
//       //   return

import 'package:flutter/material.dart';
import 'package:task/View/product_pages/product_item_widget.dart';

import 'package:task/helpers/colors.dart';
import 'package:task/model/exported_packages.dart';
import 'package:task/model/product_model.dart';

class ProductListWidget extends GetView<ProductController> {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double itemHeight =
        (MediaQuery.of(context).size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = MediaQuery.of(context).size.width / 2;
    ProductController productController = Get.put(ProductController());

    //
    return Obx(() => InkWell(
        onTap: () => productController.getData(id: '2'),
        child: controller.list.isEmpty
            ? const Center(
                child: TextWidget(
                    text: "No Products", textStyle: boldTextStyleBlack),
              )
            : SizedBox(
                width: 300,
                height: 100,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: itemWidth / itemHeight),
                  itemBuilder: (BuildContext context, int index) {
                    ProductModel productModel = controller.list[index];
                    return ProductItemWidget(productModel: productModel,);
                  },
                ),
              )));
  }
}
