

import 'package:task/View/categories-pages/categories_list.dart';
import 'package:task/View/product_pages/product_list_widget.dart';

import '../../model/exported_packages.dart';

class CategoriesPages extends StatelessWidget {
  const CategoriesPages({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(BrandController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
// Custom AppBar
        const Expanded(flex: 1, child: CustomAppBarWidget()),
        //   //Search Field
        const Expanded(
          flex: 1,
          child: TextFieldWidget(),
        ),

  


        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
               SlidersWidget(),
                   TextWidget(
                    text: "Women's Clothes",
                    textStyle: boldTextStyleBlack,
                  ),
                   TextWidget(
                   text: "150 Items",
                   textStyle: greyTextStyle,
                 ),
                 SizedBox(height: 10,),

                   BrandListWidget(),        SizedBox(height: 10,),
                   CategoriesListWidget(),

                   SizedBox(height: 20), 
              ProductListWidget(),
               ]),
          ),
       )
     ]),
  );
 }
}
