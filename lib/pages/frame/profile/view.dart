import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letstart/common/values/values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:letstart/pages/frame/profile/controller.dart';


class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

 AppBar _buildAppbar(){
return AppBar(
      title:  Text("Profile",
      style: TextStyle(
        color: AppColors.primaryText,
        fontSize: 16.sp,
        fontWeight:FontWeight.bold 
      ),),
     );
 }
Widget _buildLogo(){
  return Stack(
    children: [
      Container(
        width: 120.w,
        height: 120.w,
        decoration: BoxDecoration(
          color: AppColors.primarySecondaryBackground,
          borderRadius: BorderRadius.all(Radius.circular(60.w)),
          boxShadow: [BoxShadow(
            color:Colors.grey.withOpacity(.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2)
          )]
        ),
        child: Image(
          height: 120.w,
          width: 120.w,
          image: AssetImage("assets/images/account_header.png")),
      ),
      Positioned(
        bottom: 10.w,
        right: 0.w,
        child: GestureDetector(
          child: Container(
            height: 35.w,
            width: 35.w,
            decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.all(Radius.circular(18.w)),
              
            ),
            child: Image.asset("assets/icons/edit.png"),
          ),
        ),
      
      ),
    ],
  );
}

Widget _buildCompoleteBtn(){
  return GestureDetector(
    onTap: (){

    },
    child: Container(
      width: 295.w,
      height: 45.h,
      margin: EdgeInsets.only(bottom: 20.h,top: 60.h),
                  decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [BoxShadow(
            color:Colors.grey.withOpacity(.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2)
          )]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Complete",
      style: TextStyle(
        color: AppColors.primaryElementText,
        fontSize: 16.sp,
        fontWeight:FontWeight.bold 
      ),),
              ],
            ),
    ),
  );

}
Widget _buLogoutBtn(){
  return GestureDetector(
    onTap: (){
      Get.defaultDialog(
        title: "Are you really want to logout?",
        content: Container(),
        onConfirm: (){
         controller.goLogout();
        },
        onCancel: (){

        },
        textConfirm: "Confirm",
        textCancel: "Cancel",
        confirmTextColor: Colors.white
      );
    },
    child: Container(
      width: 295.w,
      height: 45.h,
      margin: EdgeInsets.only(bottom: 20.h,top: 10.h),
                  decoration: BoxDecoration(
              color: AppColors.primarySecondaryElementText,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [BoxShadow(
            color:Colors.grey.withOpacity(.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2)
          )]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Log Out",
      style: TextStyle(
        color: AppColors.primaryElementText,
        fontSize: 16.sp,
        fontWeight:FontWeight.bold 
      ),),
              ],
            ),
    ),
  );

}
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     appBar: _buildAppbar(),
     body: SafeArea(
    child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            child: Column(
              children: [
                _buildLogo(),
                _buildCompoleteBtn(),
                _buLogoutBtn()
              ],
            ),
          ),
        )
      ],
    ),
     ),

    );
  }
}