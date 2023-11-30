import 'package:cubetentask/getX/get.data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

/// The details screen
class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GetXTapController controller=Get.put(GetXTapController());
    controller.getmsmedata();
     return Scaffold( appBar: AppBar(title:  const Text( "Details Page"), actions: [InkWell(child: const Padding(
     padding: EdgeInsets.symmetric(horizontal:12.0),
     child: Icon( Icons.info),
   ), onTap: () => context.go('/about'),),],),
      body: Container( height: double.infinity, width:  double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/one2.jpg"), opacity: .3,
            fit: BoxFit.cover,
          ),
        ),
  child: Stack( fit: StackFit.loose,
    children: [
      Center(
        child: Column( mainAxisAlignment:  MainAxisAlignment.center,
          children: [ const Text("Detailed data to be shown here.", style: TextStyle(fontSize: 22),),
           const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0),
              child: Text(controller.msmedata!.toJson().toString(), style:  TextStyle( fontSize: 14, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, color: Colors.red[800]),),
            ),
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