
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
    title: const Text( "Dashboard"), actions: [InkWell(child: const Padding(
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
  child: Center(
    child: Column( mainAxisAlignment:  MainAxisAlignment.spaceBetween,
      children: [  const Padding(
        padding: EdgeInsets.symmetric(horizontal:26.0, vertical: 30),
        child: Column(
          children: [ 
            // Text(controller.msmedata!.title),
            


            Text("State-wise distribution of enterprises by status of operation", style:  TextStyle(fontSize: 18),textAlign:TextAlign.center),
                          Text("(Fourth All India Census of MSME)", style:  TextStyle(fontSize: 18),textAlign:TextAlign.center),
],
        ),
      )
     ,   Column( mainAxisAlignment:  MainAxisAlignment.center,
          children: [
             GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  shrinkWrap: true,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
   
    GestureDetector(
     child: Container(
       padding: const EdgeInsets.all(8),
       color: Colors.teal[200],
       child:  Image.asset("assets/graph.png", fit: BoxFit.fitWidth,),
     ),
      onTap: () => context.go('/chart'),
        ),
    GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[200],
        child:  Image.asset("assets/list.png", fit: BoxFit.fitWidth,),
      ),
 onTap: () => context.go('/list'),  ),
    GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[200],
        child:  Image.asset("assets/detail.png", fit: BoxFit.fitWidth,),
      ),onTap:() => context.go('/details'), 
    ),
    GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[200],
        child:  Image.asset("assets/about.png", fit: BoxFit.fitWidth,),
      ),onTap: () => context.go('/about'),
    ),
   
  ],
)
           , 
        //     SizedBox( width:  MediaQuery.of(context).size.width/4,
        //       child: Image.asset("assets/QR.jpeg")),
               const SizedBox(height: 56,)
,            ElevatedButton(
                      onPressed: () => context.go('/details'),
                      child: const Text('Retrive detailed data'),
                    ), const SizedBox(height: 20,)
,            ElevatedButton(
                      onPressed: () => context.go('/list'),
                      child: const Text('Visualise data in a list'),
                    ),const SizedBox(height: 20,),
  ElevatedButton(
                      onPressed: () => context.go('/chart'),
                      child: const Text('Visualise data in chart'),
                    ),

          ],
        ),
         const SizedBox(height: 2,)
      ],
    ),
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

