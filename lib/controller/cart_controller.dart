import 'package:get/get.dart';

class ModifyQuantities extends GetxController{
  int counter = 0 ;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void increment(){
    counter++;
    update();
  }
  void decrement(){
    counter--;
    update();
  }
}