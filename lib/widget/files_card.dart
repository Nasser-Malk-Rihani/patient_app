import 'package:flutter/material.dart';
import 'package:patient_app/config/config.dart';
import 'package:sizer/sizer.dart';
class Vffvfvfv extends StatelessWidget {
  const Vffvfvfv({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FilesCard extends StatelessWidget {
  String fileName;
  String date;

  FilesCard({Key? key, required this.date, required this.fileName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.5),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 10,
        child: SizedBox(
          height: 60,
          width: 350  ,
          child: ListTile(
            subtitle: Text(date, style: TextStyle(fontSize: 14,),),
            trailing: Icon(Icons.download),
            title: Text(fileName, style: TextStyle(
                decoration: TextDecoration.underline, fontSize: 16),),),
        ),
      ),
    );
  }
}