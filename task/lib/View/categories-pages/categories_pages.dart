import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task/View/categories-pages/brands_widget.dart';
import 'package:task/View/categories-pages/categories-list_widget.dart';

import '../../model/exportedPackages.dart';

class CategoriesPages extends StatelessWidget {
  const CategoriesPages({super.key});

  @override
  Widget build(BuildContext context) {
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

const Spacer(),

        SingleChildScrollView(
          child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                 children: const[
             SlidersWidget(),
             TextWidget(
                text: "Women's Clothes",
                textStyle: boldTextStyleBlack,
            ),
             TextWidget(
                text: "150 Items",
                textStyle: greyTextStyle,
            ),
           CategoryListWidget(),
           SizedBox(height: 10,),
           CategoryListWidget(),
           
           CategoryListWidget(),
          ]),
              ),
        ),
      ]),
    );
  }
}
