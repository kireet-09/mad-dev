import 'package:flutter/material.dart';
import 'package:resmanagement/widgets/app_button_widget.dart';
import 'package:resmanagement/widgets/app_input_textfield.dart';
class PreviousBookedplaces extends StatefulWidget {
  const PreviousBookedplaces({ Key? key }) : super(key: key);

  @override
  _PreviousBookedplacesState createState() => _PreviousBookedplacesState();
}

class _PreviousBookedplacesState extends State<PreviousBookedplaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("PREVIOUSLY BOOKED")),
    );
  }
}