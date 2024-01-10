import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EnrollPackageView extends GetView {
  const EnrollPackageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 2, right: 2),
              height: MediaQuery.sizeOf(context).height / 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/mcq_package.jpg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),


          ],
        );
      },
    ));
  }
}
