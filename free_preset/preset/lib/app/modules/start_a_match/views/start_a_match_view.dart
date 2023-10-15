import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/start_a_match_controller.dart';

class StartAMatchView extends GetView<StartAMatchController> {
  const StartAMatchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StartAMatchView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StartAMatchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
