import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:letstart/common/routes/routes.dart';
import 'package:letstart/pages/frame/profile/state.dart';

import '../../../common/store/user.dart';

class ProfileController extends GetxController{
  ProfileController();
  final titlte ="LetsStart .";
  final state =ProfileState();

  void goLogout()async{
    await GoogleSignIn().signOut();
    await UserStore.to.onLogout();
  }
  
} 