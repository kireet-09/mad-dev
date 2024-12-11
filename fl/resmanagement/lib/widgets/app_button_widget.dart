import 'package:flutter/material.dart';
class AppButtonWidget extends StatelessWidget {
 AppButtonWidget({ Key? key, 
required this.title, 
required this.titleColor,
 required this.buttonbackgroundColor,
  required Color buttonBorderColor, 
  required this.onPressed}) : 
  super(key: key);

 final String title;
 final Color titleColor;
 final Color buttonbackgroundColor;
 void Function() onPressed;

  @override
  Widget build(BuildContext context){
    return  TextButton(
            onPressed: onPressed,
             child: Container(
              width: 300,
              height: 20,
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: titleColor),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: buttonbackgroundColor,

              ),
             ),
             );
  }
}