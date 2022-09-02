

import 'package:flutter/material.dart';

import '../../model/exportedPackages.dart';

class BrandsWidget extends StatelessWidget {
  const BrandsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: 30,width: 100,
      child: ElevatedButton(onPressed: () { },
      child: const TextWidget(text: "test",textStyle: boldTextStyleWhite,)),
    );
  }
}