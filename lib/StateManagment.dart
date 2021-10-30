import 'package:flutter/material.dart';
import 'package:get/get.dart';


class StateManagment extends StatelessWidget {
 // final const StateManagment({Key? key}) : super(key: key);

  var counter=0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("State Managment"),
      ),
      body: Container(
        child: Center(
          child: Obx((){
            return Text('Counter : $counter',style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),);
          }),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          counter+1;
        },
      ),


    );
  }
}
