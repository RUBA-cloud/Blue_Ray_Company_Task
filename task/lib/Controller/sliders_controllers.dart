import 'package:task/helpers/routes.dart';
import 'package:task/model/exported_packages.dart';

class SliderController extends GetxController {
  List? sliderList = [];

  @override
  void onClose() {
    cleanUp();

    super.onClose();
  }

  @override
  void onInit() {
    getData();

    super.onInit();
  }

  Future<List> getData() async {
    await PostServices().sendData(route: getSliders);
    


    sliderList = [
      SliderModel(
          id: 1,
          name: "NEW User Offer",
          descripation: "Up To 75%",
          image: "assets/Image/ImageDress.jpeg")
    ];
    update();
    //Backeend But There No Data in Server 
    // var data = (json.decode(PostServices.responseBody));
// //The Slider List From Backend But There No Data in server I dealed as Local Data
//  sliderList=     await (data["sliders"]).map((e) => SliderModel.fromMap(e)).toList();

    return sliderList!;
  }

  void cleanUp() {
    sliderList = [];
    PostServices.responseBody = null;
  }
}
