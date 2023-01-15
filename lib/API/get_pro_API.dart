import 'dart:convert';

import 'package:dukan/Model/product_model.dart';
import 'package:dukan/constants.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as https;

class GetProduct{

  Future getretailproduct() async{

    var headers = {
      'Authorization': 'Bearer $bearer_token'
    };
    // print(headers);
    var request = https.Request('GET', Uri.parse('${base_url}v1/product/user/getretailproducts'));
    // print(request);
    request.headers.addAll(headers);

    https.StreamedResponse response = await request.send();
    // print(response.statusCode);
    if (response.statusCode == 200) {
      final List productlist =
      json.decode(await response.stream.bytesToString());
      saveProducts(productlist);
      return productlist.map((json) => RetailProduct.fromJson(json)).toList();
    }
    else {
      print(response.reasonPhrase);
    }
  }

  void saveProducts(List<dynamic> retailsproducts) {
    debugPrint("Mohit's Rock");
    // print("Save data: ${retailsproducts}");
    final box = GetStorage();
    box.write("retailsproducts", retailsproducts);
  }

}