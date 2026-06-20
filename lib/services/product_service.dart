import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/product_model.dart';

class ProductService {
  Future<List<ProductModel>> getProducts() async {
    final jsonString = await rootBundle.loadString('assets/data/products.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;

    return jsonList
        .map((json) => ProductModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
