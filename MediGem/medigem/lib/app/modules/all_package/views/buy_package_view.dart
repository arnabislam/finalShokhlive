import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BuyPackageView extends GetView {
  const BuyPackageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BuyPackageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BuyPackageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
