import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/CounterCountroller.dart';


class StateController extends StatelessWidget {
  // const StateController({Key? key}) : super(key: key);

CounterCountroller MyCounterController=Get.put(CounterCountroller());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateManagmet"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            GetX(
                init: CounterCountroller(),
            builder:(CounterCountroller counter){
              return Text('${counter.count}');

            }

          )
              ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

              Get.find<CounterCountroller>().Incriment();

        },
        ),
      );


  }
}
