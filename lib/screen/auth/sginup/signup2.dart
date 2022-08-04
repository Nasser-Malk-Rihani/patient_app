import 'package:flutter/material.dart';
import 'package:patient_app/screen/screens.dart';
import 'package:sizer/sizer.dart';
class Signup2 extends StatefulWidget {
  static String id = "signup2";
  const Signup2({Key? key}) : super(key: key);

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: (35),),
                Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: (28)),),
                SizedBox(height: (50),),
                Text("Medical Record ID",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (20)),),
                SizedBox(height: (5),),
                Container(
                  margin: EdgeInsets.all((22)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "enter your Medical Record ID",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22,),
                Text("Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (20)),),
                SizedBox(height: 5,),
                Container(
                  margin: EdgeInsets.all((17)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "enter your Password",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: (22),),
                Text("Retype Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (20)),),
                SizedBox(height: (5),),
                Container(
                  margin: EdgeInsets.all((17)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Retype your Password",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: (105),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color:  Color(0xFFD8D8D8),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 8,
                      width: 8 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                          color:  Colors.blue
                      ),
                    ),
                  ],
                ),
                SizedBox(height: (43),),
                SizedBox(
                  width: (155),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamedAndRemoveUntil(context, MainScreen.id, (route) => false);},
                      child: Text("Signup",style: TextStyle(fontSize: (20)),)),
                ),
                SizedBox(height: (48),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
