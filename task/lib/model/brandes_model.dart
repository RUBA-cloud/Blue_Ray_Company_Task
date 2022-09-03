// ignore: file_names
class BrandModel {
  String? id, nameAr, nameEn, image, url;
  BrandModel({this.image, this.nameEn, this.nameAr});
  BrandModel.fromMap(Map<String, dynamic> map) {
    // id = map["id"];
    image = map["image"] ?? map["image"];
    nameEn = map["name_en"] ?? map["name_en"];
    nameAr = map["name_ar"] ?? map["name_ar"];
  }
}
