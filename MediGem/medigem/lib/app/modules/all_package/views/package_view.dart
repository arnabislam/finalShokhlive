import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PackageView extends GetView {
  const PackageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 3,),
            Container(
              margin: EdgeInsets.only(left: 2,right: 2),
              height: MediaQuery.sizeOf(context).height/6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/mcq_package.jpg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),


            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 2,right: 2),
              height: MediaQuery.sizeOf(context).height/6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/english_gk.png",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 2,right: 2),
              height: MediaQuery.sizeOf(context).height/6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/admission2024.jpg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 2,right: 2),
              height: MediaQuery.sizeOf(context).height/6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/2ndTimer.jpg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 2,right: 2),
              height: MediaQuery.sizeOf(context).height/6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/organic_chemistry.jpg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 2,right: 2),
              height: MediaQuery.sizeOf(context).height/6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/chemistry.jpg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),

            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 2,right: 2),
              height: MediaQuery.sizeOf(context).height/6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/physics_med.jpg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 2,right: 2),
              height: MediaQuery.sizeOf(context).height/6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/biology_med.jpg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),


            SizedBox(height: 5,),

            Container(
              margin: EdgeInsets.only(left: 2,right: 2),
              height: MediaQuery.sizeOf(context).height/6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/medi_free.jpg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),

          ],
        ),
      )
    );
  }
}
