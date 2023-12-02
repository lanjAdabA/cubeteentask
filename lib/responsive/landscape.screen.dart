import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandscapeScreen extends StatelessWidget {
  const LandscapeScreen({
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
     padding: const EdgeInsets.symmetric(vertical:12.0),
     child: Column(
       children: [ 
         // Text(controller.msmedata!.title),
         
    
    
          // todo <_
          DefaultTextStyle( 
    style:  const TextStyle(letterSpacing: 2,
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
  //todo _>
    
    ],
     ),
          )
         ,   Column( mainAxisAlignment:  MainAxisAlignment.center,
       children: [
          AspectRatio(aspectRatio: 4/1,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.symmetric(horizontal:20,),
              crossAxisSpacing: 10,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisCount: 4,
              children: <Widget>[
               //? chart
                GestureDetector(
                 child: Card( elevation: 10,shadowColor: Colors.red, 
                   child: Stack( alignment: Alignment.bottomCenter,
                     children: [
                                Container( 
                                  padding: const EdgeInsets.all(8),
                                  color: Colors.teal[200],
                                  child:  Image.asset("assets/chart.png", fit: BoxFit.fitWidth,),
                                ),   Container(  color: Colors.teal[100],
                                  padding: const EdgeInsets.all(8.0),
                                   margin: const EdgeInsets.all(8),
                                  child: const SizedBox( width: double.infinity, child: Text("Chart", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, letterSpacing: 2),))
                      
                                )
                     ],
                   ),
                 ),
                  onTap: () => context.go('/chart'),
                    ),  
                    //? list
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
            child: const SizedBox( width: double.infinity, child: Text("Data List ", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, letterSpacing: 2),))
                      
                       )
                     ],
                   ),
                 ),
                  onTap: () => context.go('/list'),
                    ), 
                    
                    //? json
                       GestureDetector(
                 child: Card( elevation: 10,shadowColor: Colors.red, 
                   child: Stack( alignment: Alignment.bottomCenter,
                     children: [
                       Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child:  Image.asset("assets/json.png", fit: BoxFit.fitWidth,),
                       ),   Container(  color: Colors.teal[100],
            padding: const EdgeInsets.all(8.0),
             margin: const EdgeInsets.all(8),
            child: const SizedBox( width: double.infinity, child: Text("Json", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, letterSpacing: 2),))
                      
                       )
                     ],
                   ),
                 ),
                  onTap: () => context.go('/details'),
                    ),  
                    //? about
                      GestureDetector(
                 child: Card( elevation: 10,shadowColor: Colors.red, 
                   child: Stack( alignment: Alignment.bottomCenter,
                     children: [
                       Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child:  Image.asset("assets/about.png", fit: BoxFit.fitWidth,),
                       ),   Container(  color: Colors.teal[100],
            padding: const EdgeInsets.all(8.0),
             margin: const EdgeInsets.all(8),
            child: const SizedBox( width: double.infinity, child: Text("About", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, letterSpacing: 2),))
                      
                       )
                     ],
                   ),
                 ),
                  onTap: () => context.go('/about'),
                    ),
                    //todo
            //     GestureDetector(
            //       child: Container(
            //         padding: const EdgeInsets.all(8),
            //         color: Colors.teal[200],
            //         child:  Image.asset("assets/detail.png", fit: BoxFit.fitWidth,),
            //       ),
            //  onTap: () => context.go('/list'),  ),
            //     GestureDetector(
            //       child: Container(
            //         padding: const EdgeInsets.all(8),
            //         color: Colors.teal[200],
            //         child:  Image.asset("assets/json.png", fit: BoxFit.fitWidth,),
            //       ),onTap:() => context.go('/details'), 
            //     ),
            //     GestureDetector(
            //       child: Container(
            //         padding: const EdgeInsets.all(8),
            //         color: Colors.teal[200],
            //         child:  Image.asset("assets/about.png", fit: BoxFit.fitWidth,),
            //       ),onTap: () => context.go('/about'),
            //     ),
               
              ],
            ),
          )
        
     //     SizedBox( width:  MediaQuery.of(context).size.width/4,
     //       child: Image.asset("assets/QR.jpeg")),
    ,            Row( mainAxisAlignment:  MainAxisAlignment.spaceEvenly
    , crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton( style:  ElevatedButton.styleFrom(elevation: 9),
                       onPressed: () => context.go('/line'),
                       child: const Text('Line chart'),
                     ),
              ElevatedButton(style: ElevatedButton.styleFrom(elevation: 9),
                   onPressed: () => context.go('/column'),
                   child: const Text('Column chart'),
                 ),
      ElevatedButton( style:  ElevatedButton.styleFrom(elevation: 9),
                   onPressed: () => context.go('/chart'),
                   child: const Text('Bar chart'),
                 ),
                  const SizedBox(width: 2,)
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