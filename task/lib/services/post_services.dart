import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:task/helpers/routes.dart';
import 'package:task/model/exported_packages.dart';

class PostServices extends GetxService {
  //Send Data

  //Handle Status Code
  static var responseBody;

  Future sendData({
    required String route,
    required var body,
  }) async {
    try {
      var response = await http.post(Uri.parse(route), body: body);
      print(response.body.toString());
      checkStatusCode(statusCode: response.statusCode, response: response.body);

      // ignore: nullable_type_in_catch_clause
    } on HttpException {
      throw ("HttpException");
    } on SocketException {
      throw ("No Internet Connetion");
    } on TimeoutException {
      throw ("No Time Exception");
    } on FormatException {
      throw ("Error");
    } on Error catch (e) {
      throw "Catch";
    }
  }

  void checkStatusCode({required var statusCode, var response}) {
    switch (statusCode) {
      case (200):
        responseBody = (response);

        break;
      case (404):
        responseBody = null;

        break;
    }
  }
}
