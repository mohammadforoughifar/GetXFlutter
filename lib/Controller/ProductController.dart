import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/Controller/Products.dart';
import 'package:getxapp/Product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


class ProductController extends GetxController{
  RxBool loading=false.obs;
  RxList<ProductModel>Productss=<ProductModel>[].obs;


  onInit(){
    GetAllProduct();
  }

GetAllProduct() async{
//   var url="http://170.10.0.192:61011/api/";
//   var response=await http.get(Uri.http(url,"Product/produhct/GetAllProducts"));
// var result=convert.jsonDecode(response.body);
var response=await Dio().get("http://170.10.0.192:61011/api/Product/produhct/GetAllProducts");

for(var item in response.data)
{
//  print(item['productId']);
  Productss.add(ProductModel(

      item['productId'],
      item['productName'],
      item['price'],
      item['img_Url'],
      item['discount'],
      item['count'],
      item['count'],
      item['offer_Persond']));



}

print(Productss.length);

}



}