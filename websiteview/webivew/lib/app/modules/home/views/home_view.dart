import 'package:flutter/material.dart';


import 'package:get/get.dart';

import '../../../webview.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit Game'),
        centerTitle: true,
      ),
      body:  Center(
        child: IconButton(onPressed: (){
          Get.to(const WebViewScreen(urlWeb: 'http://xyz.shokhlive.com/fruits?token=c1b6d22e6da59621599ae2ed9e9b2e3588b8a382&package_id=113023', appBarName: 'Fruit Game',));
        }, icon: const Icon(Icons.gamepad,size: 59,color: Colors.blue,)),
      ),
    );
  }
}
