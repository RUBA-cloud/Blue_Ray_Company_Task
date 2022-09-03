import 'package:flutter/material.dart';
import 'package:task/helpers/colors.dart';
import 'package:task/model/slider_model.dart';

import '../../model/exported_packages.dart';

class SliderWidget extends StatelessWidget {
  final SliderModel? sliderModel;
  const SliderWidget({super.key, this.sliderModel});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
    

      children: [
        logoWhite,
       
          Container(
            height: 130,
            // ignore: sort_child_properties_last
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  TextWidget(
                    text: sliderModel!.name!,
                    textStyle: boldTextStyleWhite,
                  ),
                  TextWidget(
                    text: sliderModel!.descripation!,
                    textStyle: boldTextStyleWhite,
                  ),
                  TextWidget(
                    text: sliderModel!.descripation!,
                    textStyle: boldTextStyleWhite,
                  ),
                  ElevatedButton(onPressed: (){},
                   child:const TextWidget(text: "Shop Now",textStyle: boldTextStyleWhite,))
                ],
              ),
            ),
            margin: const EdgeInsets.all(0.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: colorWhite),
            ),
          ),
        
      ],
    );
  }
}
