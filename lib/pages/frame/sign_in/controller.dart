import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:letstart/common/entities/entities.dart';
import 'package:letstart/common/routes/names.dart';
import 'package:letstart/pages/frame/sign_in/state.dart';


class SignInController extends GetxController{
  SignInController();
  
  final state =SignInState();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
scopes: [
  'openid'
]
  );

 Future<void> handleSignIn(String type) async {
  try {
    if(type =="phone number"){

    }else if(type=="google"){
     var user = await _googleSignIn.signIn();
     if(user!=null){
      String? displayName =user.displayName;
      String email =user.email;
      String id = user.id;
      String photoUrl =user.photoUrl??"assets/icons/google.png";
      LoginRequestEntity loginPanelListRequestEntity=LoginRequestEntity();
      loginPanelListRequestEntity.avatar=photoUrl;
      loginPanelListRequestEntity.name=displayName;
      loginPanelListRequestEntity.email=email;
      loginPanelListRequestEntity.type=2;
      asyncPostData();
      print("successfully");
     }
    }else{
      if (kDebugMode) {
        print("..login type not sue ");
    
      }}
  } catch (e) {
    if (kDebugMode) {
      print(" ...Error with login $e");
    }
  }
 }
 asyncPostData(){
  print("lets go to the messagePage");
  Get.offAllNamed(AppRoutes.Message);

 }
}