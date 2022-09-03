import 'package:task/Controller/category_controller.dart';
import 'package:task/model/exported_packages.dart';

class BrandController extends GetxController {
  var list = [];
  static int selectedId = 0;
  int index = 0;
  Future<List> getData() async {
    await PostServices().sendData(route: getBrands,body: mapLang);
    var data = (json.decode(PostServices.responseBody));

    list = await (data["brands"]).map((e) => BrandModel.fromMap(e)).toList();
    // selectedId = list[0].id;
    update();

    return list!;
  }

  void cleanUp() {}
  // PostServices().responseBody = null;

  @override
  void onClose() {
    cleanUp();
  }

  @override
  void onInit() {
    getData();
  }

  void selectedBrand({var index, var id}) async{
    this.index = index;
    update();

   
  }
}
