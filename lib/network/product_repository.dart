

import 'package:dio/dio.dart';
import 'package:ecommmerce2/models/product_model.dart';

class ProductRepository{
  Future<List<dynamic>> categoris()async{
    Response response= await Dio().get('https://fakestoreapi.com/products/categories');
    return response.data;

  }
  Future<List<ProductModel>> product()async{
    Response response= await Dio().get('https://fakestoreapi.com/products');
    final product=List.from(response.data).map((e) => ProductModel.fromJson(e)).toList();
    return product;

  }
}