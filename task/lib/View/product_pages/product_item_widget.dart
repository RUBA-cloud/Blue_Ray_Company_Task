import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/helpers/colors.dart';
import 'package:task/model/exported_packages.dart';
import 'package:task/model/product_model.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductModel productModel;
  
  const ProductItemWidget({super.key,required this.productModel});

  @override
  Widget build(BuildContext context) {
     final double itemHeight =
        (MediaQuery.of(context).size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = MediaQuery.of(context).size.width / 2;
      return Column(
                      children: [
                        Card(
                          child: Stack(
                            children: [
                              Expanded(

                                flex: 1,
                                child:productModel.image==null?
                                 Image(
                                  image: const AssetImage(
                                      "assets/Images/ImageDress.jpeg"),fit: BoxFit.cover,
                                  width: itemWidth,
                                  height: 80,
                                ):Image(image: NetworkImage(productModel.image,),width: itemWidth,height: 70,)
                              ),
                              CircleAvatar(
                                backgroundColor: colorWhiteOpacity,
                                child: IconButton(
                                  onPressed: (() {}),
                                  icon: faviorateIcon,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: TextWidget(
                                text: productModel.nameEn ==null?"Product Name":productModel.nameEn!,
                                textStyle: boldTextStyleBlack)),
                        Expanded(
                            flex: 1,
                            child: TextWidget(
                                text:productModel.descripation==null?"Descripation":productModel.descripation!,
                                textStyle: greyTextStyle)),
                        Expanded(
                            flex: 1,
                            child: TextWidget(
                                text: productModel.salePrice!,
                                textStyle: greyTextStyle)),
                      ],
                    );

  }
}