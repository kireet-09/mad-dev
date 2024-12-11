import 'package:flutter/material.dart';

class AppInputTextfieldWidget extends StatelessWidget {
 AppInputTextfieldWidget({ Key? key ,required this.controller, required this.title, required this.hitText }) 
 : super(key: key);
TextEditingController? controller;
 final String title;
final String hitText;
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        ),
        TextFormField( 
          controller: controller,
          decoration: InputDecoration(hintText: hitText, border: OutlineInputBorder(borderRadius: BorderRadius.circular(9))),
        ),
      ],
    );
  }
}