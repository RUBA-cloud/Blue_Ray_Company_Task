
import '../model/exported_packages.dart';

class AlertDialog{
  void alertDailog({ required String title,required String middleText}){

    //
  Get.defaultDialog(
            title:title,
            middleText: middleText,
            );
  }
}