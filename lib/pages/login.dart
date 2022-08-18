import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var _isVisible = false;
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0Xff22C7A9),
        body: Padding(
            padding: EdgeInsets.only(top: 60, left: 20, right: 30),
            child: Column(children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Image.asset(
                    "assets/Group 9.png",
                    height: 300,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 30,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur",
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
              const Center(
                child: Text(
                  "adipiscing elit. Diam maecenas mi non sed ut",
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
              const Center(
                child: Text(
                  "odio. Non, justo, sed facilisi et. ",
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff22C7A9),
                      ),
                      border: InputBorder.none,
                      hintText: 'Username , Email ',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: TextFormField(
                    obscureText: _isVisible ? false : true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff22C7A9),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: Icon(
                          _isVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      border: InputBorder.none,
                      hintText: ' Password',
                    ),
                  ),
                ),
              ),
            ])));
  }
}
