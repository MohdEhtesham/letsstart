import 'package:get/get.dart';
import 'package:letstart/common/routes/routes.dart';
import 'package:letstart/pages/frame/welcome/state.dart';

class WelcomeController extends GetxController{
  WelcomeController();
  final titlte ="LetsStart .";
  final state =WelcomeState();

  @override
  void onReady(){
    super.onReady();
    Future.delayed(const Duration(seconds: 4),()=>Get.offAllNamed(AppRoutes.Message));
  }
}