import 'package:flutter/material.dart';
import 'package:resmanagement/widgets/app_button_widget.dart';
import 'package:resmanagement/widgets/app_input_textfield.dart';
class CancelBooking extends StatefulWidget {
  const CancelBooking({ Key? key }) : super(key: key);

  @override
  _CancelBookingState createState() => _CancelBookingState();
}

class _CancelBookingState extends State<CancelBooking> {
  TextEditingController _datecontroller = TextEditingController();
  TextEditingController _timecontroller = TextEditingController();
  TextEditingController _peoplecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cancel Booking")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           child: Column(
            children: [
               Text("More Details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _datecontroller, title: "day", hitText: ""),
             SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _timecontroller, title: "time", hitText: ""),
             SizedBox(height: 10,),
            AppInputTextfieldWidget(controller: _peoplecontroller, title: "number of people", hitText: ""),
             SizedBox(height: 10,),
             AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
              title: "Cancel",
              titleColor: Colors.white,
              buttonbackgroundColor: Color.fromRGBO(0, 0, 255, 1),
              buttonBorderColor :Colors.transparent,
            ),
            ],
           ),
        ),
      )
    );
  }
}