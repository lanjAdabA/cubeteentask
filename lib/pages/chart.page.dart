// // ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, unused_field

// import 'dart:convert';
// import 'package:cubetentask/model/chartmodel.dart';
// import 'package:cubetentask/model/msmeDataModel.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:syncfusion_flutter_charts/charts.dart';



// class ChartScreen extends StatefulWidget {
//   // ignore: prefer_const_constructors_in_immutables
//   ChartScreen({super.key});

//   @override
//   _ChartScreenState createState() => _ChartScreenState();
// }

// class _ChartScreenState extends State<ChartScreen> {
//   List<RecordFile > chartData = [];

//   Future loadRecord() async {
//     final String jsonString = await getJsonFromAssets();
//     final dynamic jsonResponse = json.decode(jsonString);
//     for (Map<String, dynamic> i in jsonResponse) {
//       //  print(jsonString.toString());
//       chartData.add(RecordFile.fromJson(i));
//     }
//   }

//   Future<String> getJsonFromAssets() async {
//     return await rootBundle.loadString('assets/msme.json');
//   }

//   @override
//   void initState() {
//     loadRecord();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Graphical Representation'),
//         ),
//         body: Center(
//             child: FutureBuilder(
//                 future: getJsonFromAssets(),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     return SfCartesianChart(                     enableAxisAnimation: true,
                    
//                         primaryXAxis: CategoryAxis(maximum: 34,),
                         
//                         // Chart title
//                         title: ChartTitle(text: 'state_wise'),
//                         series: <ChartSeries<RecordFile, String>>[

// // //todo working
//                           BarSeries<RecordFile, String>( animationDuration: 2000,
//                              isVisible: true,
                              
//                             dataSource: chartData,
//                             xValueMapper: (RecordFile msme, _) => msme.stateUt,
//                             yValueMapper: (RecordFile msme, _) => msme.working,
//                           ),
//                              BarSeries<RecordFile, String>( animationDuration: 3000,
//                             dataSource: chartData,
//                             xValueMapper: (RecordFile msme, _) => msme.stateUt,
//                             yValueMapper: (RecordFile msme, _) => msme.closed,
//                           ),    

//                                    BarSeries<RecordFile, String>(animationDuration: 4000, 
//                             dataSource: chartData,
//                             xValueMapper: (RecordFile msme, _) => msme.stateUt,
//                             yValueMapper: (RecordFile msme, _) => msme.nonTraceable,
//                           ),     
//                             BarSeries<RecordFile, String>( animationDuration: 3500,
//                             dataSource: chartData,
//                             xValueMapper: (RecordFile msme, _) => msme.stateUt,
//                             yValueMapper: (RecordFile msme, _) => msme.total,
//                           ),

//                           //!
//                         ]);
//                   } else {
//                     return Card(
//                       elevation: 5.0,
//                       child: SizedBox(
//                         height: 100,
//                         width: 400,
//                         child: Center(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               const Text('Retriving JSON data...',
//                                   style: TextStyle(fontSize: 20.0)),
//                               SizedBox(
//                                 height: 40,
//                                 width: 40,
//                                 child: CircularProgressIndicator(
//                                   semanticsLabel: 'Retriving JSON data',
//                                   valueColor: const AlwaysStoppedAnimation<Color>(
//                                       Colors.blueAccent),
//                                   backgroundColor: Colors.grey[300],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   }
//                 })));
//   }
// }

// class ChartData {
//   ChartData(this.state_ut, this.working, this.closed, this.non_traceable, this.total);

//   final String state_ut;
//   final double? working; final double? closed; final double? non_traceable; final double? total;

//   factory ChartData.fromJson(Map<String, dynamic> parsedJson) {
//     return ChartData(
//       parsedJson['stateUt'],
//       parsedJson['working'], parsedJson['closed'], parsedJson['non_traceable'], parsedJson['_total'],
//     );
//   }
// }


// //! hardcoded chartdata files are generated from the json file directly via chatgpt

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});
  
  

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {

  late ZoomPanBehavior _zoomPanBehavior;
  // late TrackballBehavior _trackballBehavior;

    
    @override
    void initState(){
      _zoomPanBehavior = ZoomPanBehavior(
                  enablePinching: true,
                   enablePanning: true,
                    zoomMode: ZoomMode.y,
                   enableSelectionZooming: true,
                    enableDoubleTapZooming: true
                );
                //   _trackballBehavior = TrackballBehavior(
                //   enable: true,
                //   // Display mode of trackball tooltip
                //   tooltipDisplayMode: TrackballDisplayMode.floatAllPoints
                // );
                
      super.initState();
    }
 @override
    Widget build(BuildContext context) {
        final List<ChartData> chartData = <ChartData>[
     ChartData('JAMMU & KASHMIR', 14993, 1831, 1521, 18345),
ChartData('HIMACHAL PRADESH', 11931, 4034, 767, 16732),
ChartData('PUNJAB', 48110, 24553, 4868, 77531),
ChartData('CHANDIGARH', 996, 559, 271, 1826),
ChartData('UTTARAKHAND', 23765, 8219, 2419, 34403),
ChartData('HARYANA', 33150, 10973, 4120, 48243),
ChartData('DELHI', 3754, 0, 0, 3754),
ChartData('RAJASTHAN', 54885, 17342, 4752, 76979),
ChartData('UTTAR PRADESH', 187742, 80616, 35231, 303589),
ChartData('BIHAR', 50036, 16344, 4291, 70671),
ChartData('SIKKIM', 122, 86, 0, 208),
ChartData('ARUNACHAL PRADESH', 417, 167, 31, 615),
ChartData('NAGALAND', 1332, 2395, 0, 3727),
ChartData('MANIPUR', 4492, 929, 0, 5421),
ChartData('MIZORAM', 3715, 669, 595, 4979),
ChartData('TRIPURA', 1343, 424, 138, 1905),
ChartData('MEGHALAYA', 3010, 665, 467, 4142),
ChartData('ASSAM', 19864, 6266, 4209, 30339),
ChartData('WEST BENGAL', 43259, 10708, 10644, 64611),
ChartData('JHARKHAND', 18190, 3712, 5711, 27613),
ChartData('ORISSA', 19606, 5744, 1123, 26473),
ChartData('CHHATTISGARH', 22768, 15485, 4609, 42862),
ChartData('MADHYA PRADESH', 106997, 36502, 10957, 154456),
ChartData('GUJARAT', 229830, 34945, 22745, 287520),
ChartData('DAMAN & DIU', 594, 24, 27, 645),
ChartData('DADRA & NAGAR HAVELI', 1716, 0, 110, 1826),
ChartData('MAHARASHTRA', 86586, 41856, 34383, 162825),
ChartData('ANDHRA PRADESH', 45692, 2250, 991, 48933),
ChartData('KARNATAKA', 136186, 47581, 7648, 191415),
ChartData('GOA', 2621, 2754, 1771, 7146),
ChartData('LAKSHADWEEP', 2, 0, 0, 2),
ChartData('KERALA', 150188, 34903, 18389, 203480),
ChartData('TAMIL NADU', 233881, 82966, 4530, 321377),
ChartData('PUDUCHERRY', 1451, 711, 222, 2384),
ChartData('ANDAMAN & NICOBAR ISLANDS', 750, 142, 142, 1034)

        ];
        return Scaffold(
            body: Center(
                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right:18.0, top: 42),
                      child: SfCartesianChart( tooltipBehavior: TooltipBehavior(enable: true),
                        
                zoomPanBehavior: _zoomPanBehavior,
                          primaryXAxis: CategoryAxis( maximum: 34,),
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

