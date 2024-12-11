import 'package:flutter/material.dart';
import 'package:resmanagement/widgets/app_button_widget.dart';
import 'package:resmanagement/widgets/app_input_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _newuseridcontroller = TextEditingController();
  TextEditingController _newpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Forgot Password"),),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
         width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           child: Column( children: [
             Text("Enter new details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _newuseridcontroller, title: "new used id", hitText: "username"),
             SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _newpasswordcontroller, title: "new password", hitText: ""),
           ],),
      ),
    ),
    );
  }
}