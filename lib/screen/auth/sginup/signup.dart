import 'package:flutter/material.dart';
import 'package:patient_app/screen/screens.dart';
import 'package:sizer/sizer.dart';
class Signup extends StatefulWidget {
  static String id = "signup";
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 35,),
                Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: (28)),),
                SizedBox(height: 50,),
                Text("Full Legal Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (20)),),
                SizedBox(height: (5),),
                Container(
                  margin: EdgeInsets.all((22)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "enter your national passport name",
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
                SizedBox(height: (22),),
                Text("Date of Birth",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (20)),),
                SizedBox(height: (5),),
                Container(
                  margin: EdgeInsets.all((17)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "enter your date of birth m/d/y",
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
                Text("Email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (20)),),
                SizedBox(height: (5),),
                Container(
                  margin: EdgeInsets.all((17)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "enter your email",
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
                Text("Mobile Number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (20)),),
                SizedBox(height: (5),),
                Container(
                  margin: EdgeInsets.all((17)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "enter your mobile number",
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
                SizedBox(height: 105,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 8,
                      width: 8 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color:  Colors.blue
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color:  Color(0xFFD8D8D8),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: (43),),
                SizedBox(
                  width: (155),
                  child: ElevatedButton(
                      onPressed: (){
                          Navigator.pushNamed(context, Signup2.id);
                      }, child: Text("Next ->",style: TextStyle(fontSize: (20)),)),
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
