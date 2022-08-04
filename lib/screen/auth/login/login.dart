import 'package:flutter/material.dart';
import 'package:patient_app/screen/screens.dart';
import 'package:sizer/sizer.dart';
class Login extends StatefulWidget {
  static String id = "login";
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height:38,),
                Image.asset("assets/logo.png",
                  height: 139,
                  width: 139,
                ),
                SizedBox(height: 52),
                Text("Login",style: TextStyle(color: Colors.blue,fontSize: 25),),
                SizedBox(height: 51),
                Text("Username",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.all(17),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your username or email",
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
                SizedBox(height: 22,),
                Text("Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.all(17),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "enter your password",
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
                SizedBox(height: 25),
                TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(color: Colors.grey,fontSize: 16,decoration: TextDecoration.underline),)),
                SizedBox(height: 28),
                ElevatedButton(onPressed: (){Navigator.pushNamedAndRemoveUntil(context, MainScreen.id, (route) => false);}, child: Text("Login",style: TextStyle(fontSize: 20),)),
                SizedBox(height: 36),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, Signup.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account? ",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      Text("Sign Up ",style: TextStyle(color: Colors.grey,fontSize: 16),),
                    ],
                  ),
                ),
                SizedBox(height: 76),
              ],
            ),
          ),
        ),
      ),
    );
  }
}