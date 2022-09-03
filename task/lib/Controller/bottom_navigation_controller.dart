import '../model/exported_packages.dart';

class BottomNavigationController extends GetxController {
// ignore: todo
//TODO::Properties
  var tabIndex = 0;

// ignore: todo

//TODO :: functions

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
//1. Move Between Bottom Navigation View will change The Index

}
