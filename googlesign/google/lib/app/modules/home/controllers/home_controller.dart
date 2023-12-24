import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

var _googleSignIn=GoogleSignIn();

var googleAccount=Rx<GoogleSignInAccount?>(null);
login()async{
  googleAccount.value=await _googleSignIn.signIn();
}
logout()async{
  googleAccount.value=await _googleSignIn.signOut();
}


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
