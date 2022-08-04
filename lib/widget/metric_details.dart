import 'package:flutter/material.dart';
import 'package:patient_app/config/config.dart';
import 'package:sizer/sizer.dart';
metricDetails(msg,context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          title: Container(
            width: 48,
            height: 160,
            child: Text(msg),
          ),
          actions: [
          ],
      );
    },
  );
}