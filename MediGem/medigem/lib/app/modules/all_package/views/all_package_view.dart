import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medigem/app/modules/all_package/views/enroll_package_view.dart';
import 'package:medigem/app/modules/all_package/views/package_view.dart';
import 'package:medigem/app/modules/auth/views/login_view.dart';
import 'package:medigem/app/modules/auth/views/register_view.dart';
import 'package:medigem/app/modules/utils/views/constant_view.dart';

import '../controllers/all_package_controller.dart';

class AllPackageView extends GetView<AllPackageController> {
  const AllPackageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 42,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title:Text("Packages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      ),
      body:  DefaultTabController(

        length: 2,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: TabBar(

            tabs: [
              Tab(
                text: 'My Enroll Package  ',

              ),
              Tab(
                text: 'All Package',

              ),

            ],
            unselectedLabelColor: Colors.blue,
            labelColor: Colors.white,
            indicatorColor: Color(0xff41E3C6),

            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 1,


            // indicator: ShapeDecoration(
            //   shape: StadiumBorder(),
            //   color: Colors.cyanAccent,
            //
            // ),

            indicator: BoxDecoration(


                color: Color(0xff41E3C6),
                borderRadius: BorderRadius.all(Radius.circular(9))),
          ),
          body: TabBarView(
            children: [
              EnrollPackageView(),
              PackageView(),


            ],
          ),
        ),
      ),
    );
  }
}
