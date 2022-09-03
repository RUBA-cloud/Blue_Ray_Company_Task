
import 'package:task/View/comon_widgets/button_widgets.dart';

import 'package:task/model/exported_packages.dart';

class BrandListWidget extends StatelessWidget {
  const BrandListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BrandController());
    return SizedBox(
      height: 30,
      width: MediaQuery.of(context).size.width,
      child: GetBuilder<BrandController>(builder: (controller) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.list.length,
            itemBuilder: (BuildContext context, int index) {
              return ButtonWidget(action: ()=>controller.selectedBrand(index: index,id: controller.list[index].id),
              text: controller.list[index].nameEn,
              style: index==controller.index ?roundedGreyeButton:roundedWhiteButton,

    
             
              );
             
            });
      }),
    );
  }
}
