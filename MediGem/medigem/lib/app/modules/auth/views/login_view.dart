import 'package:flutter/material.dart';


import 'package:get/get.dart';
import 'package:medigem/app/modules/home/views/home_view.dart';
import 'package:medigem/app/modules/utils/views/constant_view.dart';

import '../../widgets/views/reusable_widget_view.dart';
import 'auth_view.dart';

class LoginView extends GetView {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login Now",
              style:TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/loupe.png",
              height: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
              child: rPrimaryTextField(
                // controller: _editingControllerPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                borderColor: Colors.grey,
                hintText: '  Enter Phone Number ', controller: null,
                  prefixIcon: Icon(Icons.phone_android,color: Colors.cyanAccent,)
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
              child: rPrimaryTextField(
                // controller: _editingControllerPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                borderColor: Colors.grey,
                hintText: '  Enter Password ', controller: null,
                prefixIcon: Icon(Icons.lock,color: Colors.cyanAccent,),
                suffixIcon: Icon(Icons.remove_red_eye),

              ),
            ),
            SizedBox(height: 10,),
            Align(

                alignment: Alignment.centerRight,
                child: Container(
                    margin: EdgeInsets.only(right: 28),
                    child: Text("Forgott Password?",style: TextStyle(fontSize: 14,color: Colors.deepPurple,fontWeight: FontWeight.w500),))),
            SizedBox(height: 12,),
            rButtonContainer(buttonName: "Login now")





          ],
        ),
      ),
    );
  }
}
