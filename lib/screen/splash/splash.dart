import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:patient_app/screen/screens.dart';
import 'package:sizer/sizer.dart';
class Splash extends StatefulWidget {
  static String id = "Splash";

  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int currentPage = 0;
  var splashData = [
    {"text": "A bundle of medical services and devices that are built with diabetic healthcare system in mind.","title" : "Pancreasy" ,"image": "assets/logo.png"},
    {"text": "You can track your medical metrics using Pancreasy devices.","title" : "Pancreasy Devices", "image": "assets/logo.png"},
    {"text": "You can book from a list of top rated diabetic practicioners.","title" : "Pancreasy Network", "image": "assets/logo.png"},
  ];

  checkLoggedUser() async {
    //var sp = await SharedPreferences.getInstance();
    //TODO: check logging
  }

  @override
  void initState() {
    super.initState();
    checkLoggedUser();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder:(context, orientation, deviceType) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                elevation: 0,
                title: const Text(
                  "Welcome!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent
                  ),
                ),
                backgroundColor: Colors.white,
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, Login.id);
                  }, child: const Text("Skip",style: TextStyle(color: Colors.grey,decoration: TextDecoration.underline),))
                ],
              ),
              body: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: PageView.builder(
                        onPageChanged: (value) {
                          setState(() {
                            currentPage = value;
                          });
                        },
                        itemCount: splashData.length,
                        itemBuilder: (context, index) => SplashContent(
                          image: splashData[currentPage]["image"],
                          title: splashData[currentPage]["title"],
                          text: splashData[currentPage]["text"],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Column(
                          children: [
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                splashData.length,
                                    (index) => buildDot(index),
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 155.w,

                              child: ElevatedButton(
                                  onPressed: (){
                                    if(currentPage != 2){
                                      setState(() {
                                        currentPage++;
                                      });
                                    }else{
                                      Navigator.pushNamed(context, Login.id);
                                    }
                                  }, child: Text(currentPage != 2 ?"Next ->" : "Start",style: TextStyle(fontSize: 20.sp),)),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
    );

  }
  buildDot(int index) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: currentPage == index ?  Colors.blue : const Color(0xFFD8D8D8),
      ),
    );
  }
}
