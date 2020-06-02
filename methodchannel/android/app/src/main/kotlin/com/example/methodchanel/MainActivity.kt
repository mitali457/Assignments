package com.example.methodchanel 
package io.flutter.plugins.connectivity;
package io.flutter.plugins.camera;
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import android.os.Build.VERSION
import android.os.Build.VERSION_CODES
import android.net.ConnectivityManager;
import android.net.NetworkInfo;


import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
  private val CHANNEL = "com.example.methodchanel/call_native_services"

  override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
        // Note: this method is invoked on the main thread.
        call, result ->
        // battery
        if (call.method == "getBatteryLevel") {     
          val batteryLevel = getBatteryLevel()
  
          if (batteryLevel != -1) {
            result.success(batteryLevel)
          } else {
            result.error("UNAVAILABLE", "Battery level not available.", null)
          }
        } 

        // communication
        else {
        
        if (call.method ("helloFromNativeCode") != null) {
            CameraDevice device;
            val greetings = helloFromNativeCode();
                   result.success(greetings);
        }
        else {

            result.success(call.method)
        }
        }


       // image picker
        else  {
            int imageSource;
            if(call.method == "cameraDevice")
            {
                val images = clickedImageFromCamera();
                    result.success(images);
            }
            else {

                result.success(call.method)
            }
        }

        // internet

        if (call.method.equals("check")) {
            NetworkInfo info = manager.getActiveNetworkInfo();
            if (info != null && info.isConnected()) {
              result.success(getNetworkType(info.getType()));
            } else {
              result.success("none");
            }
          }
        // else  {
        //     if(call.method == "getInternetConnectivity"){
        //         val networkconnection = getInternetConnectivity()
        //         if (networkconnection == getInternetConnectivity.wifi) {
                    

        //         }
        //         else if (networkconnection == getInternetConnectivity.mobile){}
        //             result.success(networkconnection);
        //     }
        //     else {

        //         result.success(call.method)
        //     }
        // }


     }
  
  }
  private fun getBatteryLevel(): Int {
    val batteryLevel: Int
    if (VERSION.SDK_INT >= VERSION_CODES.LOLLIPOP) {
      val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
      batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
    } else {
      val intent = ContextWrapper(applicationContext).registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
      batteryLevel = intent!!.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) * 100 / intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1)
    }

    return batteryLevel
  }
  private fun check(): String getNetworkType(int type){
    switch (type) {
        case ConnectivityManager.TYPE_ETHERNET:
        case ConnectivityManager.TYPE_WIFI:
        case ConnectivityManager.TYPE_WIMAX:
          return "wifi";
        case ConnectivityManager.TYPE_MOBILE:
        case ConnectivityManager.TYPE_MOBILE_DUN:
          return "mobile";
        default:
          return "none";
      }
    
}

  private fun helloFromNativeCode(): String {
    return "Welcome from Native Android Code";
  }

  private fun clickedImageFromCamera(): String{
      return ;
  }

}