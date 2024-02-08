import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_12/screens/screen10.dart';
import 'package:flutter_application_12/screens/screen3.dart';
import 'package:flutter_application_12/screens/screen4.dart';
import 'package:flutter_application_12/screens/screen9.dart';
import 'package:fluttertoast/fluttertoast.dart';

bool mobileValidator({required String value}) {
  String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(pattern);
  if (!regExp.hasMatch(value) || value.length != 10) {
    return false;
  } else
    return true;
} //mobile Validat

class scr2 extends StatefulWidget {
  const scr2({super.key});

  @override
  State<scr2> createState() => _scr2State();
}

class _scr2State extends State<scr2> {
  TextEditingController cellnumber = new TextEditingController();
  @override
  void initState() {
    super.initState();
  }

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
                child: TextField(
                  controller: cellnumber,
                  decoration: InputDecoration(
                    label: Text("Cell Phone"),
                    focusColor: Colors.yellow,
                    prefixIcon: Icon(Icons.call, color: Colors.yellow),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.5),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  _submit();

                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => scr9())));
                },
                child: Text(
                  "SEND OTP",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding:
                        EdgeInsets.symmetric(horizontal: 110, vertical: 20)),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => scr10())));
                },
                child: Text(
                  "CONTINUE WITHOUT LOGIN",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding:
                        EdgeInsets.symmetric(horizontal: 55, vertical: 20)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("by signing, you agree to our "),
                  Text(
                    "Terms and Conditions",
                    style: TextStyle(
                      color: Colors.yellow,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "SIGN UP",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 40),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(179, 221, 17, 17)),
                      child: FloatingActionButton(
                        backgroundColor: Colors.red,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => scr3())));
                        },
                        child:
                            Center(child: Icon(Icons.arrow_right_alt_rounded)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _submit() async {
    if (cellnumber.text.isEmpty) {
      /*_myconfig.toast(msg: "Please Enter OTP");*/
      return Fluttertoast.showToast(
          msg: "Please Enter Cellphone Number",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    if (!mobileValidator(value: cellnumber.text)) {
      return Fluttertoast.showToast(
          msg: "Please Enter Valid Cell Number",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    Navigator.push(context, MaterialPageRoute(builder: ((context) => scr10())));
  }
}
