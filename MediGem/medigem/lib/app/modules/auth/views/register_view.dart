import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../../utils/views/constant_view.dart';
import '../../widgets/views/reusable_widget_view.dart';
import 'auth_view.dart';

class RegisterView extends GetView {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Registration Now",
            style:TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,),
            child: rPrimaryTextField(
              // controller: _editingControllerPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                borderColor: Colors.grey,
                hintText: '  Enter Your Name ', controller: null,
                prefixIcon: Icon(Icons.person,color: Colors.cyanAccent,)
            ),
          ),
          SizedBox(height: 20,),        Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,),
            child: rPrimaryTextField(
              // controller: _editingControllerPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                borderColor: Colors.grey,
                hintText: '  Enter Phone Number ', controller: null,
                prefixIcon: Icon(Icons.phone_android,color: Colors.cyanAccent,)
            ),
          ),
          SizedBox(height: 20,),        Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,),
            child: rPrimaryTextField(
              // controller: _editingControllerPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                borderColor: Colors.grey,
                hintText: '  Enter College Name ', controller: null,
                prefixIcon: Icon(Icons.school,color: Colors.cyanAccent,)
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,),
            child: rPrimaryTextField(
              // controller: _editingControllerPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                borderColor: Colors.grey,
                hintText: '  HSC Exam Year ', controller: null,
                prefixIcon: Icon(Icons.school,color: Colors.cyanAccent,)
            ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,),
            child: rPrimaryTextField(
              // controller: _editingControllerPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                borderColor: Colors.grey,
                hintText: '  Enter Your Email  ', controller: null,
                prefixIcon: Icon(Icons.email,color: Colors.cyanAccent,)
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,),
            child: rPrimaryTextField(
              // controller: _editingControllerPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                borderColor: Colors.grey,
                hintText: '  Enter Password ', controller: null,
                prefixIcon: Icon(Icons.lock
                  ,color: Colors.cyanAccent,),
              suffixIcon: Icon(Icons.remove_red_eye)
            ),
          ),

          SizedBox(height: 30,),

          rButtonContainer(buttonName: "Register Now")





        ],
      ),
    );
  }
}
