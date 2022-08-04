import 'package:flutter/material.dart';
class SettingsCard extends StatelessWidget {
  String name;
  IconData icon;
  SettingsCard({required this.icon,required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        SizedBox(
          height: 50,
          width: 300,
          child: Material(
            elevation: 20,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(name,textAlign: TextAlign.center,style: TextStyle(fontSize: 20 ),),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15),
                      child: Icon(icon),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
