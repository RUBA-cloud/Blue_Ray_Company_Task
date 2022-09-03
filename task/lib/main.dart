import 'package:flutter/material.dart';


import 'package:task/View/home_page.dart';


import 'model/exported_packages.dart';

void main(List<String> args) {

  runApp(const MyWidget());
  
  
 
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(primaryColor: Colors.red),
        debugShowCheckedModeBanner: false,
        title: 'Welcome to Flutter',
        home: const HomePage());
  }
}
