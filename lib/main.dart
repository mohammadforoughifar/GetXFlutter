import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/FirstPage.dart';
import 'package:getxapp/NotFoand.dart';
import 'package:getxapp/Page2.dart';
import 'package:getxapp/ProductList.dart';
import 'package:getxapp/StateController.dart';
import 'package:getxapp/StateManagment.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/firstpage",
      defaultTransition: Transition.size,
      unknownRoute: GetPage(name: "/notFound",page: ()=>NotFound()),
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/Page2", page: ()=>Page2()),
        GetPage(name: "/firstpage", page: ()=>FirstPage()),
        GetPage(name: "/StateManagment", page: ()=>StateManagment()),
        GetPage(name: "/StateController", page: ()=>StateController()),
        GetPage(name: "/ProductList", page: ()=>ProductList()),
      ],


      // home: FirstPage() ,
    );
  }
}


