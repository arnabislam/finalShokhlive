import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  TextEditingController textEditingController=TextEditingController();
var isEmojiVisible=false.obs;
FocusNode focusNode=FocusNode();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    focusNode.addListener(() {
if(focusNode.hasFocus) {
  isEmojiVisible.value=false;
}
    });
  }

  @override
  void onClose() {
    super.onClose();
    textEditingController.dispose();
  }

  void increment() => count.value++;
}
