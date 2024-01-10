import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text/model.dart';
import 'package:flutter_circular_text/circular_text/widget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:math' as math;

import 'package:get/get.dart';
import 'package:medigem/app/modules/all_package/views/all_package_view.dart';
import 'package:medigem/app/modules/auth/views/login_view.dart';
import 'package:medigem/app/modules/auth/views/register_view.dart';
import 'package:medigem/app/modules/mcq_package/views/mcq_package_view.dart';
import 'package:medigem/app/modules/utils/views/constant_view.dart';

import '../../widgets/views/reusable_widget_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 45,),
          Text("Medi Gem",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
          SizedBox(height: 25,),
          // CircularText(
          //   children: [
          //     TextItem(
          //       text: Text(
          //         "medical preparation".toUpperCase(),
          //         style: TextStyle(
          //           fontSize: 45,
          //           color: Colors.blue,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       space:8,
          //       startAngle: -90,
          //       startAngleAlignment: StartAngleAlignment.center,
          //       direction: CircularTextDirection.clockwise,
          //
          //     ),
          //
          //   ],
          //   radius: 220,
          //   position: CircularTextPosition.inside,
          //   //backgroundPaint: Paint()..color = Colors.grey.shade200,
          // ),
          Text("Student Name",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),


          ),
          const SizedBox(height: 12,),
          Container(
            margin: EdgeInsets.only(left: 40,right: 40),
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white,
            border: Border.all(color: Colors.blue,width: 1)
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/person.png",),height: 25,width: 25,),
                      Text("Profile")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/meeting.png"),height: 25,width: 25,),
                      Text("Performance")
                    ],
                  ),
                ),

              ],
            ),
          ),
          const SizedBox(height: 12,),

          InkWell(
            onTap: (){
              Get.to(AllPackageView());
            },

            child: Container(
              margin: const EdgeInsets.only(left: 8,right: 8),
              height: MediaQuery.sizeOf(context).height/5,color: Color(0xffF6F29D),

            child: Image(image: AssetImage("assets/images/bannerMedical.png"),fit: BoxFit.fill,)
            ),
          ),
          SizedBox(height: 15,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/first-aid-box.png",height: 50,width: 50,),
              const Text("Buy Package",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),),
              InkWell(
                onTap: (){
                  Get.to(McqPackageView());
                },

                child: Container(height: 35,width: 75,
                  decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.red,width: 1,),borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Text("Click",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)),),
              )
            ],
          ),
      SizedBox(height: 15,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 90,
            width: MediaQuery.sizeOf(context).width/2.2,
            decoration: BoxDecoration(  borderRadius: BorderRadius.circular(7),

              gradient: const LinearGradient(
                colors: [Colors.blue, Colors.yellow],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Row(
              children: [
                Image(image: AssetImage("assets/images/exam.png",),height: 70,width:70,),
                Text(
                  ' Free\n Live \n Exam',
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          Container(
            height: 90,
            width: MediaQuery.sizeOf(context).width/2.2,
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(7),
              gradient: const LinearGradient(
                colors: [Colors.blue, Colors.yellow],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/quiz.png",),height: 70,width: 70,),
                Text(
                'Daily\nQuiz',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 26,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),

          SizedBox(height: 12,),
          CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/medical_admission.jpg",
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/medical_admission.jpg",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/medical_admission.jpg",
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              // Container(
              //   margin:  EdgeInsets.only(left: 5),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //
              //
              //   ),
              //   child: CachedNetworkImage(
              //     imageUrl:bannerController.bannerList['image'],
              //     fit: BoxFit.cover,
              //   ),
              // ),
            ],
            options: CarouselOptions(
              // height: 120.0,
              aspectRatio: 23 / 9.5,
              autoPlay: true,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 1,
            ),
          ),




        ],
      )
    );
  }
}


