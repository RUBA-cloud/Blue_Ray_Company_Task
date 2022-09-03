// ignore_for_file: avoid_unnecessary_containers


import 'package:task/View/slider_pages/slider_row.dart';


import '../../model/exported_packages.dart';

class SlidersWidget extends StatelessWidget {
  const SlidersWidget({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SliderController());
    return GetBuilder<SliderController>(builder: (controller) {
      return CarouselSlider.builder(
        itemCount: controller.sliderList!.length > 0
            ? controller.sliderList!.length
            : 1,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Stack(children: <Widget>[
  
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Image(
                    image: AssetImage("assets/Images/image.jpeg",),
                    
                  
                   
                    fit: BoxFit.cover,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SliderWidget(sliderModel: controller.sliderList![itemIndex],),
                  )
          
        ]), options: CarouselOptions(autoPlay: false),
        // options: CarouselOptions(
        //   height: 700,
   
        //   viewportFraction: 0.8,
        //   initialPage: 0,
        //   enableInfiniteScroll: false,
        //   reverse: false,
        //   autoPlay: false,
        //   autoPlayInterval: const Duration(seconds: 3),
        //   autoPlayAnimationDuration: const Duration(milliseconds: 800),
        //   autoPlayCurve: Curves.fastOutSlowIn,
        //   enlargeCenterPage: true,
        //   scrollDirection: Axis.horizontal,
        // ),
      );
    });
  }
}
