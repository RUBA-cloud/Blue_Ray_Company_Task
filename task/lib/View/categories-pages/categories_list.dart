import 'package:task/Controller/category_controller.dart';
import 'package:task/Controller/product_controller.dart';
import 'package:task/View/product_pages/product_list_widget.dart';
import 'package:task/helpers/button_styles.dart';

import '../../model/exported_packages.dart';
import '../comon_widgets/button_widgets.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CategoryController());
    return SizedBox(
      height: 30,
      width: MediaQuery.of(context).size.width,
      child: GetBuilder<CategoryController>(builder: (controller) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.list!.length,
            itemBuilder: (BuildContext context, int index) {
              return ButtonWidget(
                  action: () => controller.selectedCategory(index: index,id: controller.list![index].id),
                  text: controller.list![index].nameEn,
                  style: index == controller.index
                      ? roundedGreyeButton
                      : roundedWhiteButton);
            });
      }),
    );
  }
}
