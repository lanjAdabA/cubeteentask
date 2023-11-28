
import 'package:cubetentask/getX/get.data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

/// The home screen
class HomeScreen extends StatefulWidget {


  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  
  Widget build(BuildContext context) {
    GetXTapController controller=Get.put(GetXTapController());
    controller.getmsmedata();
    
 return Scaffold(
   appBar: AppBar(leading: const Icon(Icons.menu),
    title: const Text( "Home Page"), actions: [InkWell(child: const Padding(
     padding: EdgeInsets.symmetric(horizontal:12.0),
     child: Icon( Icons.logout),
   ), onTap: () => context.go('/signin'),),],),
      body:
      Obx(() => controller.isDataLoading.value? const Center(child: CircularProgressIndicator(),):
       Container( height: double.infinity, width:  double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/one7.jpg"), opacity: .3,
            fit: BoxFit.cover,
          ),
        ),
  child: Stack( fit: StackFit.loose,
    children: [
      Center(
        child: Column( mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [  Padding(
            padding: EdgeInsets.symmetric(horizontal:26.0, vertical: 30),
            child: Column(
              children: [ Text(controller.msmedata.toString())
,                


                Text("State-wise distribution of enterprises by status of operation", style:  TextStyle(fontSize: 18),textAlign:TextAlign.center),
                              Text("(Fourth All India Census of MSME)", style:  TextStyle(fontSize: 18),textAlign:TextAlign.center),
],
            ),
          )
         ,   Column( mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                SizedBox( width:  MediaQuery.of(context).size.width/2,
                  child: Image.asset("assets/QR.jpeg")),
                   const SizedBox(height: 32,)
,            ElevatedButton(
                          onPressed: () => context.go('/details'),
                          child: const Text('Get detailed data'),
                        ), const SizedBox(height: 20,)
,            ElevatedButton(
                          onPressed: () => context.go('/chart'),
                          child: const Text('Visualise data in chart'),
                        ),

              ],
            ),
             const SizedBox(height: 2,)
          ],
        ),
      ),
    ],
  ),      ),
    // )
    ));

    // return Scaffold(
    //   appBar: AppBar(title: const Text('Home Screen')),
    //   body: Container( color:  Colors.black26,
    //     child: Center(
    //       child: ElevatedButton(
    //         onPressed: () => context.go('/details'),
    //         child: const Text('Go to the Details screen'),
    //       ),
    //     ),
    //   ),
    // );
  }
}

