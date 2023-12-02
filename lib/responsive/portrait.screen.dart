import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PortraitScreen extends StatelessWidget {
  const PortraitScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container( height: double.infinity, width:  double.infinity,
     decoration: const BoxDecoration(
       image: DecorationImage(
         image: AssetImage("assets/one7.jpg"), opacity: .3,
         fit: BoxFit.cover,
       ),
     ),
      child: Center(
        child: Column( mainAxisAlignment:  MainAxisAlignment.start,
          children: [   Padding(
     padding: const EdgeInsets.symmetric(horizontal:26.0, vertical: 30),
     child: Column(
       children: [ 
         // Text(controller.msmedata!.title),

         // todo <_
          SizedBox( width : MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/30,
            child: DefaultTextStyle( 
                style: const TextStyle(letterSpacing: 2, overflow: TextOverflow.fade,
                 color: Colors.black54,
                  fontSize: 16.0,
                  fontFamily: 'Agne',
                ),
                child:
                 AnimatedTextKit(
            
                  animatedTexts: [
                    TypewriterAnimatedText('State-wise distribution of enterprises by status of operation (Fourth All India Census of MSME)'),
                   
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
          ),
  //todo _>
    
        
    ],
     ),
          )
         ,   Column( mainAxisAlignment:  MainAxisAlignment.center,
       children: [
          AspectRatio(aspectRatio: 1/1,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
               //? line chart
                GestureDetector(
                 child: Card( elevation: 10,shadowColor: Colors.red, 
                   child: Stack( alignment: Alignment.bottomCenter,
                     children: [
                                Container( 
                                  padding: const EdgeInsets.all(8),
                                  color: Colors.teal[200],
                                  child:  Image.asset("assets/lineChart.png", fit: BoxFit.fitWidth,),
                                ),   Container(  color: Colors.teal[100],
                                  padding: const EdgeInsets.all(8.0),
                                   margin: const EdgeInsets.all(8),
                                  child: const SizedBox( width: double.infinity, child: Text("Line Chart", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, letterSpacing: 2),))
                      
                                )
                     ],
                   ),
                 ),
                  onTap: () => context.go('/line'),
                    ),  
                    //? column
                      GestureDetector(
                 child: Card( elevation: 10,shadowColor: Colors.red, 
                   child: Stack( alignment: Alignment.bottomCenter,
                     children: [
                       Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child:  Image.asset("assets/columnChart.png", fit: BoxFit.fitWidth,),
                       ),   Container(  color: Colors.teal[100],
            padding: const EdgeInsets.all(8.0),
             margin: const EdgeInsets.all(8),
            child: const SizedBox( width: double.infinity, child: Text("Colummn Chart ", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, letterSpacing: 2),))
                      
                       )
                     ],
                   ),
                 ),
                  onTap: () => context.go('/column'),
                    ), 
                    
                    //? json
                       GestureDetector(
                 child: Card( elevation: 10,shadowColor: Colors.red, 
                   child: Stack( alignment: Alignment.bottomCenter,
                     children: [
                       Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child:  Image.asset("assets/barChart.png", fit: BoxFit.fitWidth,),
                       ),   Container(  color: Colors.teal[100],
            padding: const EdgeInsets.all(8.0),
             margin: const EdgeInsets.all(8),
            child: const SizedBox( width: double.infinity, child: Text("Bar Chart", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, letterSpacing: 2),))
                      
                       )
                     ],
                   ),
                 ),
                  onTap: () => context.go('/chart'),
                    ),  
                    //? about
                      GestureDetector(
                 child: Card( elevation: 10,shadowColor: Colors.red, 
                   child: Stack( alignment: Alignment.bottomCenter,
                     children: [
                       Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child:  Image.asset("assets/detail.png", fit: BoxFit.fitWidth,),
                       ),   Container(  color: Colors.teal[100],
            padding: const EdgeInsets.all(8.0),
             margin: const EdgeInsets.all(8),
            child: const SizedBox( width: double.infinity, child: Text("Data Lists", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, letterSpacing: 2),))
                      
                       )
                     ],
                   ),
                 ),
                  onTap: () => context.go('/list'),
                    ),
                    //todo
          
               
              ],
            ),
          )
        , 
   
            const SizedBox(height: 56,)
    ,            Row( mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:28.0),
          child: Column( mainAxisAlignment:  MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.end,
           children: [
                   ElevatedButton(style: ElevatedButton.styleFrom(elevation: 9),
                        onPressed: () => context.go('/details'),
                        child: const Text('view Json file'),
                      ),
           ElevatedButton.icon(style: ElevatedButton.styleFrom(elevation: 9),
                        onPressed: () => context.go('/about'),
                        icon: const Icon(Icons.info, color: Colors.black45,),
                        label: const Text('about'),
                        
                      ),
                       const SizedBox(height: 30,),
             ElevatedButton.icon(   style:ElevatedButton.styleFrom(elevation: 9),
                            onPressed: () => context.go('/signin'),
                            label: const Text('log out'), icon: const Icon(Icons.logout_outlined, color:  Colors.black45,),
                          ),
           ],
                ),
        ),
      ],
    ), 
    
       ],
     ),
      const SizedBox(height: 2,)
          ],
        ),
      ),      );
  }
}