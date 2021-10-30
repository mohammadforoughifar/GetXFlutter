import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Page2"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(Get.arguments),
              FlatButton(onPressed: (){
                Get.back(result: "Backfrom Page 2");

              }, child: Text("Back to main",),color: Colors.green,)

            ],
          ),
        ),
      ),
    );
  }
}
