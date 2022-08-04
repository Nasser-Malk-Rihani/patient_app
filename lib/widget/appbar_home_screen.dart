import 'package:flutter/material.dart';
import 'package:patient_app/config/config.dart';
import 'package:sizer/sizer.dart';
class AppBarHomeScreen extends StatelessWidget implements PreferredSizeWidget {
  String title;
  AppBarHomeScreen({required this.title});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 120,
        child: Container(
          child: Column(
            children: [
              title != "Metrics"?Image.asset("assets/logo.png",width: 54,height: 54):Image.asset("assets/logo.png",width: 0,height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,style: TextStyle(fontSize: 28),),
                  title != "Settings"?IconButton(onPressed: (){}, icon: Icon(Icons.settings_rounded)): Icon(Icons.abc,color: Colors.white,),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
