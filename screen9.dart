import 'package:flutter/material.dart';
import 'package:flutter_application_12/screens/screen1.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter_application_12/screens/screen10.dart';
import 'package:flutter_application_12/screens/screen4.dart';

class scr9 extends StatefulWidget {
  const scr9({super.key});

  @override
  State<scr9> createState() => _scr9State();
}

class _scr9State extends State<scr9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/signinbg.png"),
                height: 270,
                width: double.infinity,
              ),
              SizedBox(height: 70),
              Container(
                width: 300,
                child: Text(
                  "Verified",
                  style: TextStyle(fontSize: 30, color: Colors.green),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => scr10())));
                },
                child: Text(
                  "DONE",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding:
                        EdgeInsets.symmetric(horizontal: 110, vertical: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
