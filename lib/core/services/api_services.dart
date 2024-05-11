import 'dart:convert';

import 'package:e_shop/constant/constant_text.dart';
import 'package:e_shop/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {

  Future<List<ProductModel>> getProduct () async {
    try {
      http.Response response = await http.get(Uri.parse(apiUrl+'products/'));
      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = json.decode(response.body);
        List<ProductModel> products = jsonResponse.map((data) =>
            ProductModel.fromJson(data)).toList();
        return products;
      } else {
        throw Exception('Failed to load products: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server: $e');
    }
  }

  Future<List<Category>> getCategory () async {
    try {
      http.Response response = await http.get(Uri.parse(apiUrl+'categories/'));
      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = json.decode(response.body);
        List<Category> category = jsonResponse.map((data) =>
            Category.fromJson(data)).toList();
        return category;
      } else {
        throw Exception('Failed to load categories: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server: $e');
    }
  }

}