import 'package:flutter/material.dart';
import 'package:resmanagement/widgets/app_button_widget.dart';
import 'package:resmanagement/widgets/app_input_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Whats todays plans?")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("More Options",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/makereservationScreen");
                },
                title: "Make Reservation",
                titleColor: Colors.white,
                buttonbackgroundColor: Color.fromRGBO(0, 0, 255, 1),
                buttonBorderColor: Colors.transparent,
              ),
               SizedBox(height: 10,),
              AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/cancelbookingScreen");
                },
                title: "Cancel Booking?",
                titleColor: Colors.white,
                buttonbackgroundColor: Color.fromRGBO(0, 0, 255, 1),
                buttonBorderColor: Colors.transparent,
              ),
               SizedBox(height: 10,),
              AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
                title: "Live Booking",
                titleColor: Colors.white,
                buttonbackgroundColor: Color.fromRGBO(0, 0, 255, 1),
                buttonBorderColor: Colors.transparent,
              ),
               SizedBox(height: 10,),
              AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
                title: "STAFF?",
                titleColor: Colors.white,
                buttonbackgroundColor: Color.fromRGBO(0, 0, 255, 1),
                buttonBorderColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
