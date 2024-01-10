import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/utils_controller.dart';

class UtilsView extends GetView<UtilsController> {
  const UtilsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UtilsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UtilsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
