import 'package:cubetentask/getX/get.data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

/// The details screen
class ListData extends StatelessWidget {
  /// Constructs a [ListData]
  const ListData({super.key});

  @override
  Widget build(BuildContext context) {
    GetXTapController controller=Get.put(GetXTapController());
    controller.getmsmedata();
     return Scaffold( appBar: AppBar(title:  const Text( "Data  List  Page"), actions: [InkWell(child: const Padding(
     padding: EdgeInsets.symmetric(horizontal:12.0),
     child: Icon( Icons.info),
     
   ), onTap: () => context.go('/about'),),],),
      body: 
       Obx(
        () => controller.isDataLoading.value
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SafeArea(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                        child: Column(
                          children: [
                         Text("State / UT list", style:  TextStyle(color:  Colors.deepPurple, fontSize:  24 , fontWeight: FontWeight.bold, ),)
                           ,
                            SizedBox(
                              height: 6,
                            ),
                          ],
                        ),
                      ),
                  
                   
                      const SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.msmedata!.records.length,
                          itemBuilder: (context, i) {
                            return 
                            
                            
                            
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Padding(
                                padding:  const EdgeInsets.all(8.0),
                                child: Container( padding: const EdgeInsets.symmetric(horizontal:20, vertical:  10),
                                height: MediaQuery.of(context).size.height/7,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.amber[100], ), child:   Column(children:
                                 [
                                  //? sl n state/ut
                                  Row(   children: [Row(
                                  children: [
                                    const Text("Sl. ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),), Text(controller.msmedata!.records[i].slNo,style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 24),),
                                     const SizedBox(width: 32,)
                                  ],

                                ), Row(
                                  children: [
                                    const Text("State/ UT:   ",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                                     Text(controller.msmedata!.records[i].stateUt,style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 20),)
                                  ],
                                )],)
                                ,
                                 const SizedBox(height: 8,),
                                //? working and close
                                   Row(
                                                                     children: [
                                                                       const Text("Working : ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),), Text(controller.msmedata!.records[i].working.toString(),style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 20),),
                                                                        const SizedBox(width: 32,)
                                                                     ],
                                   
                                                                   ), Row(
                                                                     children: [
                                                                       const Text("Close : ",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                                                                        Text(controller.msmedata!.records[i].closed.toString(),style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 20),)
                                                                     ],
                                                                   ),
                                  //? nontrackable and total
                                   Row(
                                                                     children: [
                                                                       const Text("non traceable : ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),), Text(controller.msmedata!.records[i].nonTraceable.toString(),style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 20),),
                                                                        const SizedBox(width: 32,)
                                                                     ],
                                   
                                                                   ), Row(
                                                                     children: [
                                                                       const Text("Total:   ",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                                                                        Text(controller.msmedata!.records[i].total.toString(),style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 20),)
                                                                     ],
                                                                   )
                                ],),),
                              )
                              
                        

                            );
                          })
                    ],
                  )),
                ),
            ),
      ),
  
    );





  }
}