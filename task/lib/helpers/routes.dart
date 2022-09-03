//TODO :This Files will Contains all urls

// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:task/Controller/product_controller.dart';

import '../model/exported_packages.dart';

const serverName = "https://avit2.br-ws.com/api/frontend/";

// ignore: prefer_interpolation_to_compose_strings
const getSliders = serverName + "getSliders";
const getBrands = serverName + "getBrands";
const getCategory = serverName + "";
const getProducts = serverName + "getProductsOfCategoryNo";
//
const mapLang = {"lang": "ar"};
 ProductController productController= Get.put(ProductController());
