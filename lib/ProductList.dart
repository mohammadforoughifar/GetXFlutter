import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/Controller/ProductController.dart';
import 'package:getxapp/Controller/Products.dart';
import 'package:http/http.dart';


class ProductList extends StatelessWidget {

  

ProductController productController=Get.put(ProductController());

late Future<List<ProductModel>>model;




  @override
  Widget build(BuildContext context) {



    print(productController.Productss);

    return Scaffold(

       appBar: AppBar(
         title:Text("ProductList"),
       ),
      body: SingleChildScrollView(
          child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: productController.Productss.length,
                    itemBuilder: (context,index){
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        padding:  EdgeInsets.all(8),
                        child: Card(
                          color: Colors.red,
                          elevation: 8,
                          child: Container(
                            width: 300,
                            child: Column(
                              children: [
                                Text(productController.Productss[index].productName),
                                Image.network("http://170.10.0.192:61011/images2/"+productController.Productss[index].img,width: 300,height: 80,),
                                SizedBox(height: 20,),
                                Text(productController.Productss[index].price.toString(),style: TextStyle(color: Colors.green),),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),


        )
        ,

    );
  }
}
