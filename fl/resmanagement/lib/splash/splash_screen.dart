import 'package:flutter/material.dart';
import 'package:resmanagement/widgets/app_button_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(height: 0,),
            Image.asset("images/logoreal.jpg"),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              child: Text(
                "Restaurant management and table services",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            AppButtonWidget(
              title: "Login",
              titleColor: Colors.white,
              buttonbackgroundColor: Color.fromRGBO(0, 0, 255, 1),
              buttonBorderColor :Colors.transparent,
              onPressed: () {
              Navigator.of(context).pushNamed("/loginScreen");
              } ,
            ),
            SizedBox(height: 10,),
              AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/signupScreen");
                },
              title: "Signup",
              titleColor: Colors.black,
              buttonbackgroundColor: Colors.white,
              buttonBorderColor :Colors.black,
            ),
          ]),
        ),
      )
    );
  }
}