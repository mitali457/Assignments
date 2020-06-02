import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _batteryPercentage = 'Battery precentage';
String  _internetConnectivity ='Internet Connection';
 String _responseFromNativeCode = 'Waiting for Response...';
String _cameraHardware ='open camera';




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Method Channel'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(

            onPressed: _getBatteryInformation,
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Click me',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0,),
          Text(
            _batteryPercentage,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 16.0,),
FlatButton(
  
   color: Colors.blueAccent,
  child: Padding(
     padding: const EdgeInsets.all(10.0),
    
child: Text('Click Me',
style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0
                ),),),
                //onPressed: _getInternetConnectivity, 
                onPressed: check,
),
SizedBox(height: 16.0,),
          Text(
            _internetConnectivity,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),

 SizedBox(height: 16.0,),
   RaisedButton(
  color: Colors.blueAccent,
  child: Padding(
              padding:  EdgeInsets.all(10.0),
              child: Text('Click me',
              style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0
                ),),),
              onPressed: responseFromNativeCode,
            ),
            SizedBox(height: 16.0,),
            Text(_responseFromNativeCode,
             style: TextStyle(
              fontSize: 20.0,
            ),),

SizedBox(height: 16.0,),
   RaisedButton(
  color: Colors.blueAccent,
  child: Padding(
              padding:  EdgeInsets.all(10.0),
              child: Text('Click me',
              style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0
                ),),),
              onPressed: cameraHardware,
            ),
            SizedBox(height: 16.0,),
            Text(_cameraHardware,
             style: TextStyle(
              fontSize: 20.0,
            ),),



        ]
      ),
    );
  }

  // For Battery Connectovity
  static const platfrom = const MethodChannel('com.example.methodchanel/call_native_services');
  
  
  Future<void> _getBatteryInformation() async {
    print('object');
    String batteryPercentage;
    try {
      var result = await platfrom.invokeMethod('getBatteryLevel');
      batteryPercentage = 'Battery level at $result%';
    } on PlatformException catch (e) {
      batteryPercentage = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryPercentage = batteryPercentage;
    });
  }

  
//For Internet Contectivity

 Future<bool> check() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }


// Future <void> _getInternetConnectivity() async
// {
//   String internetConnectivity;
//   try{
//     var result = await platfrom.invokeMethod('getInternetConnectivity');
//     internetConnectivity ='Internet Connection by $result';

//   }
//   on PlatformException catch (e) {
//       internetConnectivity = "Failed to internet connectivity: '${e.message}'.";
//     }
//      setState(() {
//       _internetConnectivity = internetConnectivity;
//     });
// }

// For communication 

Future<void> responseFromNativeCode() async {
    String response = "";
    try {
      final String result = await platfrom.invokeMethod('helloFromNativeCode');
      response = result;
    } on PlatformException catch (e) {
      response = "Failed to Invoke: '${e.message}'.";
    }
    setState(() {
      _responseFromNativeCode = response;
    });
  }

  // For camera
   
Future<void> cameraHardware() async {
  String clickingimage='';
  try {
      final String result = await platfrom.invokeMethod('clickedImageFromCamera');
      clickingimage = result;
    } on PlatformException catch (e) {
      clickingimage = "Failed to Invoke: '${e.message}'.";
    }
    setState(() {
      _cameraHardware = clickingimage;
    });


}






}