import 'package:flutter/material.dart';
import 'package:food1_app/pages/register.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0Xff22C7A9),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 50),
            child: Center(
              child: Image.asset(
                "assets/1.png",
              ),
            ),
          ),
          const Text(
            "Foodienator",
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Order your favorite Meals ",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontFamily: "Poppins",
            ),
          ),
          const Text(
            "Here!",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 150,
            width: 150,
          ),
          ToggleSwitch(
            customWidths: [150.0, 150.0],
            minWidth: 70.0,
            minHeight: 70.0,
            cornerRadius: 20.0,
            fontSize: 25.0,
            initialLabelIndex: 0,
            totalSwitches: 2,
            activeBgColor: const [Color(0Xff2DB6A3)],
            activeFgColor: Colors.white,
            inactiveBgColor: const Color(0XffDADADA),
            inactiveFgColor: Colors.grey[900],
            labels: const [
              'Sign in',
              'Register',
            ],
            onToggle: (index) {
              print('switched to: $index');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Register()));
            },
          ),
        ],
      ),
    );
  }
}
