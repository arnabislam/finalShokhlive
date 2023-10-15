import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:preset/app/modules/home/views/reusable.dart';

class MoreView extends GetView {
  const MoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(70),
              child: CircleAvatar(
                
                radius: 50, // Adjust the radius as needed
               backgroundImage: AssetImage("images/camera.png"),

              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: MediaQuery.sizeOf(context).height*.18,
            width: MediaQuery.sizeOf(context).height*.50,
           decoration: BoxDecoration(color:Colors.grey,borderRadius: BorderRadius.circular(25)),

            child: Column(
              children: [
                kMoreRow(text: 'Favourite Presets',icon: Icons.favorite_outline_rounded,),
                kMoreRow(text:'How to use?', icon:FontAwesomeIcons.youtube),
               kMoreRow(text: 'Share the app', icon: Icons.share)
               
              ],
            ),
            ),
            SizedBox(height: 25,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: MediaQuery.sizeOf(context).height*.25,
            width: MediaQuery.sizeOf(context).height*.50,
           decoration: BoxDecoration(color:Colors.grey,borderRadius: BorderRadius.circular(25)),

            child: Column(
              children: [
                kMoreRow(text: 'Rate us',icon: Icons.star,),
                kMoreRow(text:'Contact us?', icon:FontAwesomeIcons.comment),
               kMoreRow(text: 'Developer info', icon: Icons.info),
                kMoreRow(text: 'Privacy & bpolicy', icon: Icons.privacy_tip_outlined)

              ],
            ),
            ),

          ],
        ),
      )
    );
  }
}


