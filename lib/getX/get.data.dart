
// ignore_for_file: avoid_print, duplicate_ignore

import 'package:cubetentask/model/msmeDataModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetXTapController extends GetxController{
  var isDataLoading =false.obs;
  List<String> _state = [];final List<int> _working = [];final List<int> _closed = [];final List<int> _nontraceable = [];final List<int> _total = [];  List<Record> _allstatedata = []; 
  //  List _state = [];


  // final List<int>_sl_no=[];
  MsmeModel? msmedata;
  //  get msmedata=>_msmedata;
  List get state => _state;
  List get working => _working;
  List get closed => _closed;
  List get nontraceable => _nontraceable;
List get total => _total;
  List get allstatedata => _allstatedata;  
  // List get yearlist => _state;


// List get so_no => _sl_no;



@override
Future<void> onInit() async{
  super.onInit();
  getmsmedata();

}


@override
Future<void> onReady() async{
  super.onReady();
}

 @override
 void onClose(){}


// Future<List<MsmeModel>?>
getmsmedata()async{

// ignore: avoid_print
print("object");
try{
   isDataLoading(true);
  final queryParameter= {
  "api-key":"579b464db66ec23bdd0000011d5ff2fdf166461258cfd746668e359d",
  "format":"json",
  "limit":"35"
  };


final response = await http.get(Uri.https("api.data.gov.in",
"resource/6256cf88-1cf8-49e9-bc2e-6bffdef4f2d6",queryParameter));

 if (response.statusCode==200){
  var datas= msmeModelFromJson(response.body);
   msmedata=datas;
    print("Successfully get data");

//todo

for (var element in msmedata!.records) {
          if (_state.contains(element.stateUt)) {
            print('already exist');
          } else {
            _state.add(element.stateUt.toString());
          }   if (_working.contains(element.working)) {
            print('already exist');
          } else {
            _working.add(int.parse(element.working.toString()) );
          }   if (_closed.contains(element.closed)) {
            print('already exist');
          } else {
            _closed.add(int.parse(element.closed.toString()));
          } if (_nontraceable.contains(element.nonTraceable)) {
            print('already exist');
          } else {
            _nontraceable.add(int.parse(element.nonTraceable.toString()));
          }   if (_total.contains(element.total)) {
            print('already exist');
          } else {
            _total.add(int.parse(element.total.toString()));
          }
        }
        print(_state .toString());   print(_working .toString());   print(_closed .toString());   print(_nontraceable .toString());   print(_total .toString());

 }
  else{
    print("failed to get data");
  }

}
 
 catch (e){
  print(e.toString());
 }
  finally{ isDataLoading(false);}
}
 void getstatedata() {
    _allstatedata = [];
    // _datalist = [];
    _state = [];
    for (var element in msmedata!.records) {
      if (_allstatedata.contains(element) ) {
              print("already exist");
      }else{  _allstatedata.add(element);}
    }


    print(_allstatedata.toString());
  }

}