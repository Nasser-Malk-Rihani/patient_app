import 'package:flutter/material.dart';
import 'package:patient_app/screen/screens.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            routes: {
              Splash.id: (context) => const Splash(),
              Login.id: (context) => const Login(),
              Signup.id: (context) => const Signup(),
              Signup2.id: (context) => const Signup2(),
              MainScreen.id: (context) => const MainScreen(),
            },
            initialRoute: Splash.id,
          );
        });
  }
}