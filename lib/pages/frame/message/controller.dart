import 'package:get/get.dart';
import 'package:letstart/common/routes/routes.dart';
import 'package:letstart/pages/frame/message/state.dart';

class  MessageController extends GetxController{
   MessageController();
  final titlte ="LetsStart .";
  final state = MessageState();

  void goProfile()async{
   await Get.toNamed(AppRoutes.Profile);
  }

  
}