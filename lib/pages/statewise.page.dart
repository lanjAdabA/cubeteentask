

import 'package:cubetentask/getX/get.data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatewisePage extends StatefulWidget {
  const StatewisePage({super.key});
  
  

  @override
  State<StatewisePage> createState() => _StatewisePageState();
}

class _StatewisePageState extends State<StatewisePage> {

  late ZoomPanBehavior _zoomPanBehavior;

    
    @override
    void initState(){
      _zoomPanBehavior = ZoomPanBehavior(
                  enablePinching: true
                );
            
                
      super.initState();
    }
 @override
    Widget build(BuildContext context) {
    GetXTapController controller=Get.put(GetXTapController());
// ! todo
        final List<ChartData> chartData = <ChartData>[
     ChartData('Working', 14993),
          ChartData('closed', 1831, ),
     ChartData('nontracable', 1521,),
     ChartData('total', 18345),

     


        ];
print("state length${controller.state.length}");
                return Scaffold(

            body: Center(
                child: ListView.builder( 
                  itemCount: controller.state.length,
                  itemBuilder: (BuildContext context, int index) {return Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [ Text(controller.state[index].toString()),
                      Container(
                          child: SfCircularChart(
                              series: <CircularSeries>[
                                  // Renders radial bar chart
                                  RadialBarSeries<ChartData, String>(
                                      dataSource: chartData,
                                      xValueMapper: (ChartData data, _) => data.x,
                                      yValueMapper: (ChartData data, _) => data.y
                      
                                  )
                                  ,
                                  // RadialBarSeries<ChartData, String>(
                                  //     dataSource: chartData,
                                  //     xValueMapper: (ChartData data, _) => data.x,
                                  //     yValueMapper: (ChartData data, _) => data.y1
                      
                                  // ),
                              ]
                          )
                      ),
                    ],
                  ); },
                )
            )
        );  
        // return Scaffold(
        //     body: Center(
        //         child: Container(
        //             child: Padding(
        //               padding: const EdgeInsets.only(right:18.0, top: 42),
        //               child: SfCartesianChart(  tooltipBehavior: TooltipBehavior(enable:  true),
        //                                 // trackballBehavior: _trackballBehavior, 

        //         zoomPanBehavior: _zoomPanBehavior,
        //                   primaryXAxis: CategoryAxis( maximum: 34,),
        //                   series: <LineSeries>[
        //                       LineSeries<ChartData, String>(
        //                           dataSource: chartData,
        //                           xValueMapper: (ChartData data, _) => data.x,
        //                           yValueMapper: (ChartData data, _) => data.y
        //                       ),
        //                       LineSeries<ChartData, String>(
        //                           dataSource: chartData,
        //                           xValueMapper: (ChartData data, _) => data.x,
        //                           yValueMapper: (ChartData data, _) => data.y1
        //                       ),
        //                       LineSeries<ChartData, String>(
        //                           dataSource: chartData,
        //                           xValueMapper: (ChartData data, _) => data.x,
        //                           yValueMapper: (ChartData data, _) => data.y2
        //                       ), LineSeries<ChartData, String>(
        //                           dataSource: chartData,
        //                           xValueMapper: (ChartData data, _) => data.x,
        //                           yValueMapper: (ChartData data, _) => data.y3
        //                       )
        //                   ]
        //               ),
        //             )
        //         )
        //     )
        // );
    }

}
     class ChartData {
        ChartData(this.x, this.y,
        //  this.y1, this.y2,this.y3,
         );
        final String x;
        final double? y;
        // final double? y1;
        // final double? y2;
        // final double? y3;

      }





//!
