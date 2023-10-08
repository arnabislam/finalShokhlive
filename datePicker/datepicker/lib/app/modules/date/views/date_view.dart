import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/date_controller.dart';

class DateView extends GetView<DateController> {
  const DateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateController controller = Get.put(DateController());

    return Scaffold(
      body: Container(
        height: 55,
        width: 125,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                DateFormat("dd-MM-yyyy")
                    .format(controller.selectedDate.value)
                    .toString(),
                style: TextStyle(fontSize: 15),
              ),
            ),

            GestureDetector(
              child: Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Text(
                  "select date",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              onTap: () {
                controller.chooseDate();
              },
            )

            // ElevatedButton(
            //   onPressed: () {
            //     controller.chooseDate();
            //   },
            //   child: Text('Select Date'),
            // )
          ],
        ),
      ),
    );
  }
}
