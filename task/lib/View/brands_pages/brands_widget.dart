import 'package:flutter/material.dart';
import 'package:task/helpers/button_styles.dart';
import 'package:task/model/brandes_model.dart';

import '../../model/exported_packages.dart';

class BrandsWidget extends StatelessWidget {
  final BrandModel? brandModel;
  final index;
   final BrandController? controller;
 const  BrandsWidget({super.key, this.brandModel, this.controller, this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 30,
        width: 100,
        child: ElevatedButton(
            style: index==controller!.index?roundedGreyeButton:roundedWhiteButton,
            onPressed: () {
              controller!.selectedBrand(index: index);
            },
            child: TextWidget(
              text: brandModel!.nameEn!,
              textStyle: boldTextStyleBlack,
            )),
      ),
    );
  }
}
