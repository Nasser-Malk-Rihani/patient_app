import 'package:flutter/material.dart';
import 'package:patient_app/widget/widget.dart';
class Devices extends StatefulWidget {
  const Devices({Key? key}) : super(key: key);

  @override
  State<Devices> createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child:  Column(
            children: [
              AppBarHomeScreen(title: "Devices"),
              DevicesCard(
                batteryCharge: 50 ,
                bluetoothConnection: true,
                connection: true,
                deviceName: "watch 1",
                image: Colors.grey,
                wifiStrength: 60,
              ),
              DevicesCard(
                batteryCharge: 60 ,
                bluetoothConnection: false,
                connection: true,
                deviceName: "watch 2",
                image: Colors.cyan,
                wifiStrength: 60,
              ),
              DevicesCard(
                batteryCharge: 70 ,
                bluetoothConnection: true,
                connection: false,
                deviceName: "watch 3",
                image: Colors.purpleAccent,
                wifiStrength: 60,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_rounded,size: 50,),
        onPressed: (){},
      ),
    );
  }
}
