import 'package:cubetentask/getX/get.data.dart';
import 'package:cubetentask/responsive/landscape.screen.dart';
import 'package:cubetentask/responsive/portrait.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override

  Widget build(BuildContext context) {
  //  final tileHeight= MediaQuery.of(context).size.height;
    final currentWidth = MediaQuery.of(context).size.height;
    GetXTapController controller=Get.put(GetXTapController());
    controller.getmsmedata(); 
    
 return Scaffold(
   appBar: AppBar(leading: const Icon(Icons.menu),
    title: const Text( "Dashboard"), actions: [InkWell(child: const Padding(
     padding: EdgeInsets.symmetric(horizontal:12.0),
     child: Icon( Icons.logout),
   ), onTap: () => context.go('/signin'),),],),
      body:
      Obx(() => controller.isDataLoading.value? const Center(child: CircularProgressIndicator(),):
       
       currentWidth>1080?
       const PortraitScreen():const LandscapeScreen(),
    // )
    ));

 
  }
}