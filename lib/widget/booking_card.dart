import 'package:flutter/material.dart';
import 'package:patient_app/config/config.dart';
import 'package:sizer/sizer.dart';
class BookingCard extends StatefulWidget {
  const BookingCard({Key? key}) : super(key: key);

  @override
  State<BookingCard> createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 10,
      child: Container(
        width: 320,
        height: 205,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                color: Colors.green,
              ),
              width: double.infinity,
              height: 38,
              child: Text("Medical Review",style: TextStyle(fontSize: 28,),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 5,),
            Text("Dr Ziyd Lawzi",style: TextStyle(fontSize: 15,),),
            SizedBox(height: 6),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16,),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined,size: 17.5,),
                  Text("Kamel Odeh St./ Daheyat Alrasheed",style: TextStyle(fontSize: 15,),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16,),
              child: Row(
                children: [
                  Icon(Icons.watch_later_outlined,size: 17.5,),
                  Text("Thursday - 12/5/2022 - 2:30pm",style: TextStyle(fontSize: 15,),),
                ],
              ),
            ),
            SizedBox(height: 11,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone,color: Colors.green,size: 43),
                Icon(Icons.whatsapp,color: Colors.green,size: 43),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
