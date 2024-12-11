import 'package:flutter/material.dart';
import 'package:resmanagement/widgets/app_button_widget.dart';
import 'package:resmanagement/widgets/app_input_textfield.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({ Key? key }) : super(key: key);

  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  TextEditingController _newuseridcontroller = TextEditingController();
  TextEditingController _newgmail = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("What's your preference?")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           child: Column(
            children: [
              Text("Create an account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _newuseridcontroller, title: "Date of birth", hitText: ""),
         SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _newgmail, title: "card/onlinepayment linking", hitText: ""),
             SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _passwordcontroller, title: "What's your preference? ", hitText: "Indian,Chinese,Italian...(this can be changed later)"),
            ],
           )
        ),
      ),
    );
  }
}