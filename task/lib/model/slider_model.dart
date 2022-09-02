//The Api For GetSlider is 404 Not Found So I make local Model

class SliderModel {
  int? id;
  String? image, name, descripation;

//Constructer

  SliderModel(
      {required this.id,
      required this.name,
      required this.descripation,
      required this.image});
  //

  //Get The Data Of Model

  SliderModel.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    name = map["name"];
    image = map["image"];
    descripation = map["descripation"];
  }
}
