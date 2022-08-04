import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashContent extends StatelessWidget {
  var text;
  var image;
  var title;
  SplashContent({required this.image, required this.text,required this.title});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:  (context, orientation, deviceType) {
      return Column(
        children: [
          Spacer(),
          Image.asset(
            image,
            height: 70.h,
            width: 105.w,
          ),
          Spacer(),
          Text(
            title,
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 28.sp,
            ),
          ),
          SizedBox(height: 4.h,),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14
            ),
          )
        ],
      );
    },);
  }
}