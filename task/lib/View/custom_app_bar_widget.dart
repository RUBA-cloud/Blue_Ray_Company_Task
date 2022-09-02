import 'package:flutter/material.dart';


import 'package:task/model/exportedPackages.dart';

// ignore: camel_case_types
class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: 
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:

     const [
    homeIcon,
Text("HomePage")   ,bagIcon ],

));
  }
}