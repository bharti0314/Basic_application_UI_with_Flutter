import 'package:flutter/material.dart';
import 'package:flutter_application_12/screens/screen10.dart';
import 'package:flutter_application_12/screens/screen4.dart';
import 'package:fluttertoast/fluttertoast.dart';

bool nameValidator({required String value}) {
  String pattern = '[a-zA-Z]';
  RegExp regExp = new RegExp(pattern);
  if (!regExp.hasMatch(value) || value.length < 3) {
    return false;
  } else
    return true;
}

bool emailValidator({required String value}) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern.toString());

  // if (value.isEmpty) {
  //   toast(msg: "Please Enter an Email");
  // } else
  if (!regex.hasMatch(value))
    return false;
  else
    return true;
}

bool mobileValidator({required String value}) {
  String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(pattern);
  if (!regExp.hasMatch(value) || value.length != 10) {
    return false;
  } else
    return true;
} //mobile Validat

bool passwordValidator({required String value}) {
  Pattern pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regex = new RegExp(pattern.toString());
  if (!regex.hasMatch(value))
    return false;
  else
    return true;
}

bool zipValidator({required String value}) {
  if (value.isEmpty || value.length != 6) {
    return false;
  }
  return true;
}

class scr3 extends StatefulWidget {
  const scr3({super.key});

  @override
  State<scr3> createState() => _scr3State();
}

class _scr3State extends State<scr3> {
  TextEditingController name = new TextEditingController();
  TextEditingController mail = new TextEditingController();
  TextEditingController pwd = new TextEditingController();

  TextEditingController number = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController zip = new TextEditingController();

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
                height: 200,
                width: double.infinity,
              ),
              SizedBox(height: 30),
              Container(
                width: 300,
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      children: [
                        TextField(
                          controller: name,
                          decoration: InputDecoration(
                            label: Text("Full Name"),
                            focusColor: Colors.yellow,
                            prefixIcon: Icon(Icons.account_circle,
                                color: Colors.yellow),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: mail,
                          decoration: InputDecoration(
                            label: Text("Email"),
                            focusColor: Colors.yellow,
                            prefixIcon: Icon(Icons.mail, color: Colors.yellow),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        /*SizedBox(height: 10),
                        TextField(
                          keyboardType: TextInputType.text,
                          controller: pwd,
                          obscureText: true,
                          decoration: InputDecoration(
                            label: Text("Password"),
                            focusColor: Colors.yellow,
                            prefixIcon:
                                Icon(Icons.password, color: Colors.yellow),
                            border: OutlineInputBorder(),
                          ),
                        ),*/
                        SizedBox(height: 10),
                        TextField(
                          controller: number,
                          decoration: InputDecoration(
                            label: Text("Cell Number"),
                            focusColor: Colors.yellow,
                            prefixIcon: Icon(Icons.call, color: Colors.yellow),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: address,
                          decoration: InputDecoration(
                            label: Text("Address"),
                            focusColor: Colors.yellow,
                            prefixIcon: Icon(Icons.home, color: Colors.yellow),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: zip,
                          decoration: InputDecoration(
                            label: Text("Zip Code"),
                            focusColor: Colors.yellow,
                            prefixIcon:
                                Icon(Icons.folder_zip, color: Colors.yellow),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _submit();
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => scr10())));*/
                },
                child: Text(
                  "SIGN UP",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding:
                        EdgeInsets.symmetric(horizontal: 110, vertical: 20)),
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
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _submit() async {
    if (name.text.isEmpty) {
      return Fluttertoast.showToast(
          msg: "Please Enter Full Name",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    if (!nameValidator(value: name.text)) {
      return Fluttertoast.showToast(
          msg: "Please Enter Full Name",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    if (mail.text.isEmpty) {
      return Fluttertoast.showToast(
          msg: "Please Enter Email",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    if (!emailValidator(value: mail.text)) {
      return Fluttertoast.showToast(
          msg: "Please Enter Valid Email",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    if (number.text.isEmpty) {
      return Fluttertoast.showToast(
          msg: "Please Enter Cell Number",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    if (!mobileValidator(value: number.text)) {
      return Fluttertoast.showToast(
          msg: "Please Enter Cell Number",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    if (!passwordValidator(value: pwd.text)) {
      return Fluttertoast.showToast(
          msg: "Please Enter Valid Password!!",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    if (address.text.isEmpty) {
      //_myconfig.toast(msg: "Please Enter Address");
      return Fluttertoast.showToast(
          msg: "Please Enter Address",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    if (zip.text.isEmpty) {
      return Fluttertoast.showToast(
          msg: "Please Enter Zip Code",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    if (!zipValidator(value: zip.text)) {
      return Fluttertoast.showToast(
          msg: "Please Enter Valid Zip Code",
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
