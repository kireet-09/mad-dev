import 'package:flutter/material.dart';
import 'package:resmanagement/widgets/app_button_widget.dart';
import 'package:resmanagement/widgets/app_input_textfield.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 TextEditingController _useridcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           child: Column(children: [
            Text("Create an account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
             SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _useridcontroller, title: "used id", hitText: "username"),
             SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _passwordcontroller, title: "password", hitText: ""),
             SizedBox(height: 10,),
             AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/homeScreen");
                },
              title: "login",
              titleColor: Colors.white,
              buttonbackgroundColor: Color.fromRGBO(0, 0, 255, 1),
              buttonBorderColor :Colors.transparent,
            ),
             SizedBox(height: 10,),
             AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/forgotpasswordScreen");
                },
              title: "forgot password",
              titleColor: Colors.white,
              buttonbackgroundColor: Colors.black,
              buttonBorderColor :Colors.transparent,
            ),
           ]),
        ),
      ),
    );
  }
}