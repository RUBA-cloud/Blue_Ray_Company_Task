class ProductModel {
  var id, image, nameEn, nameAr, salePrice, descripation, onSalePrice;
  ProductModel({this.id, this.nameEn, this.nameAr, this.salePrice});
  ProductModel.fromMap(Map<String, dynamic> map) {
    id = map["id"] ?? map["id"];
    nameEn = map["name_en"] ?? map['name_en'];
    nameAr = map["name_ar"] ?? map['name_ar'];
    image = map["image"] ?? map['image'];
    onSalePrice = map["on_sale_price"] ?? map["on_sale_price"];
    salePrice = map["sale_price"] ?? map["sale_price"];
    descripation = map["descripation"] ?? map["descripation"];
  }
}
