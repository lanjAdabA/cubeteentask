// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, unused_field

import 'dart:convert';
import 'package:cubetentask/model/msmeDataModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:syncfusion_flutter_charts/charts.dart';



class ChartScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ChartScreen({super.key});

  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  List<RecordFile > chartData = [];

  Future loadRecord() async {
    final String jsonString = await getJsonFromAssets();
    final dynamic jsonResponse = json.decode(jsonString);
    for (Map<String, dynamic> i in jsonResponse) {
      //  print(jsonString.toString());
      chartData.add(RecordFile.fromJson(i));
    }
  }

  Future<String> getJsonFromAssets() async {
    return await rootBundle.loadString('assets/msme.json');
  }

  @override
  void initState() {
    loadRecord();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Graphical Representation'),
        ),
        body: Center(
            child: FutureBuilder(
                future: getJsonFromAssets(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SfCartesianChart( 
                        primaryXAxis: CategoryAxis(maximum: 34),
                        // Chart title
                        title: ChartTitle(text: 'state_wise'),
                        series: <ChartSeries<RecordFile, String>>[

                          
                          BarSeries<RecordFile, String>(
                            dataSource: chartData,
                            xValueMapper: (RecordFile msme, _) => msme.stateUt,
                            yValueMapper: (RecordFile msme, _) => msme.working,
                            
                          ),
                             BarSeries<RecordFile, String>(
                            dataSource: chartData,
                            xValueMapper: (RecordFile msme, _) => msme.stateUt,
                            yValueMapper: (RecordFile msme, _) => msme.closed,
                          ),             BarSeries<RecordFile, String>(
                            dataSource: chartData,
                            xValueMapper: (RecordFile msme, _) => msme.stateUt,
                            yValueMapper: (RecordFile msme, _) => msme.nonTraceable,
                          ),           
                            BarSeries<RecordFile, String>(
                            dataSource: chartData,
                            xValueMapper: (RecordFile msme, _) => msme.stateUt,
                            yValueMapper: (RecordFile msme, _) => msme.total,
                          ),
                        ]);
                  } else {
                    return Card(
                      elevation: 5.0,
                      child: SizedBox(
                        height: 100,
                        width: 400,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text('Retriving JSON data...',
                                  style: TextStyle(fontSize: 20.0)),
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: CircularProgressIndicator(
                                  semanticsLabel: 'Retriving JSON data',
                                  valueColor: const AlwaysStoppedAnimation<Color>(
                                      Colors.blueAccent),
                                  backgroundColor: Colors.grey[300],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                })));
  }
}

class MsmeModel {
  MsmeModel(this.state_ut, this.working, this.closed, this.non_traceable, this._total);

  final String state_ut;
  final double? working; final double? closed; final double? non_traceable; final double? _total;

  factory MsmeModel.fromJson(Map<String, dynamic> parsedJson) {
    return MsmeModel(
      parsedJson['state_ut'],
      parsedJson['working'], parsedJson['closed'], parsedJson['non_traceable'], parsedJson['_total'],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class ChartScreen extends StatefulWidget {
//   const ChartScreen({super.key});

//   @override
//   State<ChartScreen> createState() => _ChartScreenState();
// }

// class _ChartScreenState extends State<ChartScreen> {
//  @override
//     Widget build(BuildContext context) {
//         final List<ChartData> chartData = <ChartData>[
//            ChartData('Germany', 128, 129, 101, 200),
//            ChartData('Russia', 123, 92, 93,100),
//            ChartData('Norway', 107, 106, 90,200),
//            ChartData('USA', 87, 95, 71,232),
//            ChartData('new', 128, 129, 101, 200),
//            ChartData('jamaica', 123, 92, 93,100),
//            ChartData('africa', 107, 106, 90,200),
//            ChartData('uae', 87, 95, 71,232),
//            ChartData('old', 128, 129, 101, 200),
//            ChartData('tokyo', 123, 92, 93,100),
//            ChartData('japan', 107, 106, 90,200),
//            ChartData('uk', 87, 95, 71,232),
//         ];
//         return Scaffold(
//             body: Center(
//                 child: Container(
//                     child: Padding(
//                       padding: const EdgeInsets.only(right:18.0, top: 42),
//                       child: SfCartesianChart( 
//                           primaryXAxis: CategoryAxis( maximum: 35,),
//                           series: <CartesianSeries>[
//                               BarSeries<ChartData, String>(
//                                   dataSource: chartData,
//                                   xValueMapper: (ChartData data, _) => data.x,
//                                   yValueMapper: (ChartData data, _) => data.y
//                               ),
//                               BarSeries<ChartData, String>(
//                                   dataSource: chartData,
//                                   xValueMapper: (ChartData data, _) => data.x,
//                                   yValueMapper: (ChartData data, _) => data.y1
//                               ),
//                               BarSeries<ChartData, String>(
//                                   dataSource: chartData,
//                                   xValueMapper: (ChartData data, _) => data.x,
//                                   yValueMapper: (ChartData data, _) => data.y2
//                               ), BarSeries<ChartData, String>(
//                                   dataSource: chartData,
//                                   xValueMapper: (ChartData data, _) => data.x,
//                                   yValueMapper: (ChartData data, _) => data.y3
//                               )
//                           ]
//                       ),
//                     )
//                 )
//             )
//         );
//     }

// }
//      class ChartData {
//         ChartData(this.x, this.y, this.y1, this.y2,this.y3, );
//         final String x;
//         final double? y;
//         final double? y1;
//         final double? y2;
//         final double? y3;

//       }

