

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Linegraph extends StatefulWidget {
  const Linegraph({super.key});
  
  

  @override
  State<Linegraph> createState() => _LinegraphState();
}

class _LinegraphState extends State<Linegraph> {

  late ZoomPanBehavior _zoomPanBehavior;
  // late TrackballBehavior _trackballBehavior;

    
    @override
    void initState(){
      _zoomPanBehavior = ZoomPanBehavior(
                  // Enables pinch zooming
                  enablePinching: true
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
                      child: SfCartesianChart( 
                                        // trackballBehavior: _trackballBehavior, 

                zoomPanBehavior: _zoomPanBehavior,
                          primaryXAxis: CategoryAxis( maximum: 34,),
                          series: <LineSeries>[
                              LineSeries<ChartData, String>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y
                              ),
                              LineSeries<ChartData, String>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y1
                              ),
                              LineSeries<ChartData, String>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y2
                              ), LineSeries<ChartData, String>(
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

