import 'package:flutter/material.dart';
import 'package:task/View/categories-pages/categories_pages.dart';


import '../model/exportedPackages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      Get.put(BottomNavigationController(),);
    return GetBuilder<BottomNavigationController>(builder:(controller) {

return SafeArea(child: Scaffold(body: IndexedStack(index: controller.tabIndex,
  children:const [
CategoriesPages(),
Text("data"),
Text("data"),
Text("data"),

]),
bottomNavigationBar:BottomNavigationView(controller: controller,),
));


    });
  }
}