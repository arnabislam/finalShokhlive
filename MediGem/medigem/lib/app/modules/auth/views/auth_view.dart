import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medigem/app/modules/auth/views/register_view.dart';

import '../controllers/auth_controller.dart';
import 'login_view.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome To MEDIGEM",
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
          // Padding(
          //   padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
          //   child: rPrimaryTextField(
          //     // controller: _editingControllerPassword,
          //     keyboardType: TextInputType.visiblePassword,
          //     obscureText: true,
          //     borderColor: Colors.grey,
          //     hintText: '  Enter password ', controller: null,
          //
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
          //   child: rPrimaryTextField(
          //     // controller: _editingControllerPassword,
          //     keyboardType: TextInputType.visiblePassword,
          //     obscureText: true,
          //     borderColor: Colors.grey,
          //     hintText: '  Enter password ', controller: null,
          //
          //   ),
          // ),
          // SizedBox(height: 25,),


          InkWell(
            onTap: (){

              Get.to(LoginView());
            },
            child: rButtonContainer(buttonName: 'Login Now',)
          ),
          const SizedBox(height: 30,),
          InkWell(
              onTap: (){
                Get.to(RegisterView());
              },
              child: rButtonContainer(buttonName: 'Registration Now',)),
        ],
      ),
    );
  }
}

class rButtonContainer extends StatelessWidget {

  String buttonName;
   rButtonContainer({
    super.key,required this.buttonName
  });

  @override
  Widget build(BuildContext context) {
    return Container(

        margin: EdgeInsets.only(left: 20,right: 20),
        height: 40,width: double.infinity,
        decoration: BoxDecoration(color: Colors.cyanAccent,borderRadius: BorderRadius.circular(30)),
        child: Center(child: Text(buttonName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19),))






    );
  }
}


