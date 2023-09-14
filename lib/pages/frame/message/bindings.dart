import 'package:get/get.dart';
import 'package:letstart/pages/frame/message/controller.dart';

class MessageBinding implements Bindings{ 
  @override
  void dependencies() {
Get.lazyPut<MessageController>(() =>MessageController());
  }

}