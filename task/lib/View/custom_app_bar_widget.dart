import 'package:flutter/material.dart';

import 'package:task/model/exported_packages.dart';

// ignore: camel_case_types
class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [homeIcon, Text("HomePage"), bagIcon],
    );
  }
}
