import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
 return Scaffold(
   appBar: AppBar(leading: Icon(Icons.menu),
    title: Text( "Home Page"), actions: [InkWell(child: Padding(
     padding: const EdgeInsets.symmetric(horizontal:12.0),
     child: Icon( Icons.info),
   ), onTap: () => context.go('/about'),),],),
      body: Container( height: double.infinity, width:  double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/one7.jpg"), opacity: .3,
            fit: BoxFit.cover,
          ),
        ),
  child: Stack( fit: StackFit.loose,
    children: [
      Center(
        child: Column( mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            SizedBox( width:  MediaQuery.of(context).size.width/2,
              child: Image.asset("assets/QR.jpeg")),
               SizedBox(height: 32,)
,            ElevatedButton(
                      onPressed: () => context.go('/details'),
                      child: const Text('Get detailed data'),
                    ), SizedBox(height: 20,)
,            ElevatedButton(
                      onPressed: () => context.go('/chart'),
                      child: const Text('Visualise data in chart'),
                    ),

          ],
        ),
      ),
    ],
  ),      ),
    );

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

