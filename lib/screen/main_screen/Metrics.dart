import 'package:flutter/material.dart';
import 'package:patient_app/config/config.dart';
import 'package:patient_app/widget/appbar_home_screen.dart';
import 'package:patient_app/widget/metric_widget.dart';
import 'package:sizer/sizer.dart';
class MetricsScreen extends StatefulWidget {

  @override
  State<MetricsScreen> createState() => _MetricsScreenState();
}

class _MetricsScreenState extends State<MetricsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarHomeScreen(title: "Metrics"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MetricWidget(color: Colors.pink,title: "Glucose", fotter: "mmol/L", imageSrc: "assets/MetricAssets/Glucose.png", numbers: "128"),
                  MetricWidget(color: Colors.orange,title: "Temperature", fotter: "*C", imageSrc: "assets/MetricAssets/Temperature.png", numbers: "32"),
                ],
              ),
              SizedBox(height: 21,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MetricWidget(color: Colors.redAccent,title: "Heart Rate", fotter: "BPM", imageSrc: "assets/MetricAssets/Heart Rate.png", numbers: "128"),
                  MetricWidget(color: Colors.blueAccent,title: "Water Drink", fotter: "L", imageSrc: "assets/MetricAssets/Water Drink.png", numbers: "32"),
                ],
              ),
              SizedBox(height: 21,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MetricWidget(color: Colors.greenAccent,title: "Activity", fotter: "Steps", imageSrc: "assets/MetricAssets/Activity.png", numbers: "99999"),
                  MetricWidget(color: Colors.cyan,title: "Accumlated", fotter: "%", imageSrc: "assets/MetricAssets/Accumlated.png", numbers: "3.1"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
