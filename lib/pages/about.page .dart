import 'package:cubetentask/getX/get.data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

/// The details screen
class AboutScreen extends StatelessWidget {
  /// Constructs a [AboutScreen]
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GetXTapController controller=Get.put(GetXTapController());
    controller.getmsmedata();
     return Scaffold( 
      body: Container( height: double.infinity, width:  double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/one7.jpg"), opacity: .3,
            fit: BoxFit.cover,
          ),
        ),
  child: Stack( fit: StackFit.loose,
    children: [
      Center(
        child: Column( mainAxisAlignment:  MainAxisAlignment.center,
          children: [ const Padding(
            padding: EdgeInsets.all(22.0),
            child: Text("This is a test project, the task is to retrive data from an api and visually represent the retrived data via a chart, the data and information are used just for demonstration purpose and are not suppose to provide any information.", style: TextStyle(fontSize: 22),),
          ),
           const SizedBox(height: 20,),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal:18.0),
            //   child: Text(controller.msmedata!.toJson().toString(), style:  TextStyle( fontSize: 14, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, color: Colors.red[800]),),
            // ),
           const SizedBox(height: 20,),
            Text(controller.msmedata!.toString()),

            ElevatedButton(
                      onPressed: () => context.go('/home'),
                      child: const Text('Go to the Home screen'),
                    ),
          ],
        ),
      ),
    ],
  ),      ),
    );




    // return Scaffold(
    //   appBar: AppBar(title: const Text('Details Screen')),
    //   body: Container( color:  Colors.blue[100],
    //     child: Center(
    //       child: ElevatedButton(
    //         onPressed: () => context.go('/'),
    //         child: const Text('Go back to the Home screen'),
    //       ),
    //     ),
    //   ),
    // );
  }
}