import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
 @override
    Widget build(BuildContext context) {
        final List<ChartData> chartData = <ChartData>[
           ChartData('Germany', 128, 129, 101, 200),
           ChartData('Russia', 123, 92, 93,100),
           ChartData('Norway', 107, 106, 90,200),
           ChartData('USA', 87, 95, 71,232),
           ChartData('new', 128, 129, 101, 200),
           ChartData('jamaica', 123, 92, 93,100),
           ChartData('africa', 107, 106, 90,200),
           ChartData('uae', 87, 95, 71,232),
           ChartData('old', 128, 129, 101, 200),
           ChartData('tokyo', 123, 92, 93,100),
           ChartData('japan', 107, 106, 90,200),
           ChartData('uk', 87, 95, 71,232),
        ];
        return Scaffold(
            body: Center(
                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right:18.0, top: 42),
                      child: SfCartesianChart( 
                          primaryXAxis: CategoryAxis( maximum: 35,),
                          series: <CartesianSeries>[
                              BarSeries<ChartData, String>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y
                              ),
                              BarSeries<ChartData, String>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y1
                              ),
                              BarSeries<ChartData, String>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y2
                              ), BarSeries<ChartData, String>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y3
                              )
                          ]
                      ),
                    )
                )
            )
        );
    }

}
     class ChartData {
        ChartData(this.x, this.y, this.y1, this.y2,this.y3, );
        final String x;
        final double? y;
        final double? y1;
        final double? y2;
        final double? y3;

      }



// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';



// class ChartScreen extends StatefulWidget {
//   const ChartScreen({super.key});

//   @override
//   State<ChartScreen> createState() => _ChartAppState();
// }

// class _ChartAppState extends State<ChartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: _MyHomePage(),
//     );
//   }
// }

// class _MyHomePage extends StatefulWidget {
//   // ignore: prefer_const_constructors_in_immutables
//   _MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<_MyHomePage> {
//   late List<_ChartData> data;
//   late TooltipBehavior _tooltip;

//   @override
//   void initState() {
//     data = [
//       _ChartData('CHN', 12),
//       _ChartData('GER', 15),
//       _ChartData('RUS', 30),
//       _ChartData('BRZ', 6.4),
//       _ChartData('IND', 14)
//     ];
//     _tooltip = TooltipBehavior(enable: true);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Syncfusion Flutter chart'),
//         ),
//         body: SfCartesianChart(
//             primaryXAxis: CategoryAxis(),
//             primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
//             tooltipBehavior: _tooltip,
//             series: <ChartSeries<_ChartData, String>>[
//               BarSeries<_ChartData, String>(
//                   dataSource: data,
//                   xValueMapper: (_ChartData data, _) => data.x,
//                   yValueMapper: (_ChartData data, _) => data.y,
//                   name: 'Gold',
//                   color: const Color.fromRGBO(8, 142, 255, 1))
//             ]));
//   }
// }

// class _ChartData {
//   _ChartData(this.x, this.y);

//   final String x;
//   final double y;
// }


// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';

// // /// The details screen
// // class ChartScreen extends StatefulWidget {
// //   /// Constructs a [ChartScreen]
// //   const ChartScreen({super.key});

// //   @override
// //   State<ChartScreen> createState() => _ChartScreenState();
// // }

// // class _ChartScreenState extends State<ChartScreen> {
// //   // var states =[
// //   //   "one",
// //   //   "two",
// //   //   "three",
// //   //   "four",
// //   //   "Five",
// //   //   "six",
// //   //   "seven",
// //   //   "eight",
// //   //   "nine",
// //   //   "ten" 
// //   // ];
// //     String dropdownValue = '*SELECT COUNTRY *';

// //   @override
// //   Widget build(BuildContext context) {
    
// //      return Scaffold( appBar: AppBar(title: const Text( "Chart Page"),leading: GestureDetector(onTap: () => context.go('/home'),child: const Icon(Icons.arrow_back)), actions: [InkWell(child: const Padding(
// //      padding: EdgeInsets.symmetric(horizontal:12.0),
// //      child: Icon( Icons.info),
// //    ), onTap: () => context.go('/about'),),],),
// //       body: Container( height: double.infinity, width:  double.infinity,
// //         decoration: const BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage("assets/one6.jpg"), opacity: .3,
// //             fit: BoxFit.cover,
// //           ),
// //         ),
// //   child: Stack( fit: StackFit.loose,
// //     children: [
// //       Center(
// //         child: Column( mainAxisAlignment:  MainAxisAlignment.center,
// //           children: [ const Text("Visual representation of state-wise distribution of enterprises ", style: TextStyle(fontSize: 22),),
// //            const SizedBox(height: 20,),

// //           //  Padding(
// //           //    padding: const EdgeInsets.all(8.0),
// //           //    child: Image.asset("assets/chart.png"),
// //           //  ),
// //             SizedBox( width: MediaQuery.of(context).size.width/3,
// //               child: DropdownButton(
// //                 isExpanded: true,
// //                 value: dropdownValue,
// //                 icon: const Icon(Icons.arrow_drop_down_outlined),
// //                 elevation: 16,
// //                 style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
// //                 underline: Container(
// //                   height: 1,
// //                   color: Colors.black,
// //                 ),
// //                 items: <String>[
// //                   '*SELECT COUNTRY *',
// //                   'India ',
// //                   'Pakistan',
// //                   'China',
// //                   'America',
// //                   'Dubai ',
// //                   'Thailand',
// //                   'Canada', 'India ',
// //                   'Pakistan',
// //                   'China',
// //                   'America',
// //                   'Dubai ',
// //                   'Thailand',
// //                   'Canada', 'India ',
// //                   'Pakistan',
// //                   'China',
// //                   'America',
// //                   'Dubai ',
// //                   'Thailand',
// //                   'Canada',
// //                 ].map<DropdownMenuItem<String>>((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Text(
// //                       value, /* style: const TextStyle(
// //                     fontWeight: FontWeight.bold,
// //                     fontSize: 30,
// //                     color: Colors.white), */
// //                     ),
// //                   );
// //                 }).toList(),
// //                 onChanged: (String? newValue) {
// //                   setState(() {
// //                     dropdownValue = newValue!;
// //                   });
// //                 },
// //               ),
// //             ),
// //             const SizedBox(
// //               height: 60,
// //             ),
// //             Row( mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 ElevatedButton(
// //                           onPressed: () => context.go('/list'),
// //                           child: const Text('Go to the list screen'),
// //                         ), 
// //                          ElevatedButton(
// //                           onPressed: () => context.go('/home'),
// //                           child: const Text('Go to the Home screen'),
// //                         ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     ],
// //   ),      ),
// //     );




// //     // return Scaffold(
// //     //   appBar: AppBar(title: const Text('Details Screen')),
// //     //   body: Container( color:  Colors.blue[100],
// //     //     child: Center(
// //     //       child: ElevatedButton(
// //     //         onPressed: () => context.go('/'),
// //     //         child: const Text('Go back to the Home screen'),
// //     //       ),
// //     //     ),
// //     //   ),
// //     // );
// //   }
// // }