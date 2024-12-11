import 'package:flutter/material.dart';
import 'package:resmanagement/widgets/app_button_widget.dart';
import 'package:resmanagement/widgets/app_input_textfield.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({ Key? key }) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup")),
      body: Container(
        width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
            Text("More Details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            AppInputTextfieldWidget(controller: _namecontroller, title: "name", hitText: "username"),
             SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _emailcontroller, title: "email", hitText: "gmail"),
             SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _passwordcontroller, title: "password", hitText: "password"),
             SizedBox(height: 10,),
             AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/createnewaccScreen");
                },
              title: "create account",
              titleColor: Colors.white,
              buttonbackgroundColor: Color.fromRGBO(0, 0, 255, 1),
              buttonBorderColor :Colors.transparent,
            ),
             SizedBox(height: 10,),
             AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/homeScreen");
                },
              title: "login",
              titleColor: Colors.white,
              buttonbackgroundColor: Colors.black,
              buttonBorderColor :Colors.transparent,
            ),
          ],),
        ),),
    );
  }
}