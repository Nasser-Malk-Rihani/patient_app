import 'package:flutter/material.dart';
import 'package:patient_app/config/config.dart';
import 'package:patient_app/widget/widget.dart';
import 'package:sizer/sizer.dart';
class MetricWidget extends StatelessWidget {
  String imageSrc;
  String title;
  String numbers;
  String fotter;
  Color color;
  MetricWidget({Key? key,required this.color, required this.title,required this.fotter,required this.imageSrc,required this.numbers,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //TODO: Dialog
        metricDetails(title, context);
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color
            ),
            //color: color,
            width: 145,
            height: 160,
          ),
          Image.asset(imageSrc,),
          Container(
            width: 145,
            height: 160,
            child: Column(
              children: [
                SizedBox(height: 16,),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10,),
                Text(numbers,
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  fotter,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            //color: Colors.black,
          ),
        ],
      ),
    );
  }
}
