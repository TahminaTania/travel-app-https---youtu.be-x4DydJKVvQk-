import 'dart:convert';

import 'package:crud/model/products.dart';
import 'package:http/http.dart' as http;

class Datarepository {
  //http://mark.bslmeiyu.com/api/getplaces
  //https://dummyjson.com/products
  String url = "http://mark.bslmeiyu.com/api/getplaces";
  String producturl = "https://jsonplaceholder.typicode.com/photos";

  Future<List<ProductModel>> getInfo() async {
    // var apiUrl = '/getplaces';
    // var url = baseUrl + apiUrl;
    http.Response res = await http.get(Uri.parse(producturl));
    print("on repo page");

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        print("data loadded ${list}");
        return list.map((e) => ProductModel.fromJson(e)).toList();
      } else {
        return <ProductModel>[];
      }
    } catch (e) {
      throw "Something went wrong, ${res.statusCode}";
      print("Something went wrong, ${res.statusCode}");
    }
  }
}
