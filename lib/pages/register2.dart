import 'package:flutter/material.dart';

class Register2 extends StatefulWidget {
  Register2({Key? key}) : super(key: key);

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0Xff22C7A9),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Center(
              child: Image.asset(
                "assets/Group 8.png",
              ),
            ),
          ),
          const Text(
            "Registration",
            style: TextStyle(
              fontSize: 30,
              color: Color(0Xff464444),
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Complete",
            style: TextStyle(
              fontSize: 27,
              color: Color(0Xff464444),
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                color: Color(0xffDFB497),
                onPressed: () {},
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
