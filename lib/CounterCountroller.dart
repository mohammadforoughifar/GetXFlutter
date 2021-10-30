import 'package:get/get.dart';

class CounterCountroller extends GetxController{
  RxInt count =0.obs;

  void Incriment(){
    count=count++;

  }
}