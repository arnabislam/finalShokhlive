import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medigem/app/modules/mcq_package/views/lesson_view.dart';

import '../controllers/mcq_package_controller.dart';

class McqPackageView extends GetView<McqPackageController> {
  const McqPackageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      appBar: AppBar(
        title: const Text('Mcq Package'),
        centerTitle: true,
      ),
      body:  ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Get.to(LessonView());
            },

            child: Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              height: MediaQuery.sizeOf(context).height/9,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 8),

height: 65,
                       width: 55,
                       decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/garden.png"),fit: BoxFit.fill,)),

                      ),
                      SizedBox(width: 15,),
                      Text("Biology 1st Paper",style: TextStyle(fontSize: 25),)
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.black,))
                ],
              ),

            ),
          );
        },
      ));

  }
}
