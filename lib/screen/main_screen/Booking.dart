import 'package:flutter/material.dart';
import 'package:patient_app/widget/widget.dart';
class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarHomeScreen(title: "Booking"),
            BookingCard(),

          ],
        ),
      ),
    );
  }
}
