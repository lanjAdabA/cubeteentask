
// ignore_for_file: avoid_print, duplicate_ignore

import 'package:cubetentask/model/msmeDataModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetXTapController extends GetxController{
  var isDataLoading =false.obs;
  MsmeModel? msmedata;
  //  get msmedata=>_msmedata;
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

 }
  else{
    print("failed to get data");
  }
   return null;

}
 
 catch (e){
  print(e.toString());
 }
  finally{ isDataLoading(false);}
}

}