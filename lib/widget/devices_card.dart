import 'package:flutter/material.dart';
class DevicesCard extends StatelessWidget {

  String deviceName;
  bool connection;
  int batteryCharge;
  double wifiStrength;
  bool bluetoothConnection;
  Color image;
  DevicesCard({required this.bluetoothConnection,required this.connection,required this.deviceName,required this.image,required this.batteryCharge,required this.wifiStrength,});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            color: image,
          ),
          child: SizedBox(
            width: 320,
            height: 120,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    child: Text(
                      deviceName,
                      style: TextStyle(
                        fontSize: 25
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text("$batteryCharge%"),
                        Icon(Icons.battery_6_bar_rounded,color: Colors.orange,),
                        Icon(Icons.wifi_tethering_outlined,color: Colors.green,),
                        Icon(Icons.bluetooth,color:bluetoothConnection ? Colors.blueAccent : Colors.grey,),

                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                    child:Text(
                      connection ? "Device Connected" : "Device Disconnected",
                    )
                ),
                Positioned(
                  right: 50,
                  top: 20,
                  child: Image.asset("assets/MetricAssets/watch.png",
                    height: 120,
                    width: 120,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
