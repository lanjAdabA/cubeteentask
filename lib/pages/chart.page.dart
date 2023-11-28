import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The details screen
class ChartScreen extends StatelessWidget {
  /// Constructs a [ChartScreen]
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold( appBar: AppBar(title: Text( "Chart Page"), actions: [InkWell(child: Padding(
     padding: const EdgeInsets.symmetric(horizontal:12.0),
     child: Icon( Icons.info),
   ), onTap: () => context.go('/about'),),],),
      body: Container( height: double.infinity, width:  double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/one6.jpg"), opacity: .3,
            fit: BoxFit.cover,
          ),
        ),
  child: Stack( fit: StackFit.loose,
    children: [
      Center(
        child: Column( mainAxisAlignment:  MainAxisAlignment.center,
          children: [ Text("Data chart will be displayed here", style: TextStyle(fontSize: 22),),
           SizedBox(height: 20,),
            ElevatedButton(
                      onPressed: () => context.go('/'),
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