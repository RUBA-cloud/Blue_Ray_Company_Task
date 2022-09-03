class CategoryModel {
  String? id, nameEn, nameAr, image, url, branId;

  CategoryModel(
      {this.id, this.nameEn, this.nameAr, this.image, this.url, this.branId});
  CategoryModel.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    nameEn = map["name_en"] ?? map["name_en"];
    nameAr = map["name_ar"] ?? map["name_ar"];
    image = map["image"] ?? map["image"];
    url = map["url"] ?? map["url"];
    branId = map["brand_id"] ??map["brand_id"];
  }
}
