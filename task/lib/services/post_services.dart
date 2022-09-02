import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:task/helpers/routes.dart';
import 'package:task/model/exportedPackages.dart';

class PostServices {
  //Send Data

  //Handle Status Code
  var responseBody;

  Future sendData({
    required String route,
  }) async {
    //
    try {
      print("object");
      var response = await http.post(Uri.parse(route), body: ({"lang": "ar"}));
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
        responseBody = jsonDecode(response);
        break;
      case (404):
        responseBody = null;
      
        break;
    }
  }
}
