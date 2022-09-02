import 'package:task/helpers/routes.dart';
import 'package:task/model/exportedPackages.dart';
import 'package:task/model/slider_model.dart';
import 'package:task/services/post_services.dart';

class SliderController extends GetxController {
  List<SliderModel>? sliderList;

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

  Future<List<SliderModel>> getData() async {
    PostServices().sendData(route: getSliders);

    PostServices().responseBody == null
        ? sliderList = [SliderModel(id: 1, name: "NEW User Offer", 
        descripation: "Up To 75%", image: "assets/Image/ImageDress.jpeg")]
        : sliderList = [
            SliderModel.fromMap(PostServices().responseBody["Sliders"])
          ];
    return sliderList!;
  }

  void cleanUp() {
    PostServices().responseBody = null;
  }
}
