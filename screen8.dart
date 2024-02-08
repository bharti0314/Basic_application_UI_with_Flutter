

import 'package:flutter/material.dart';

class scr8 extends StatefulWidget {
  const scr8({super.key});

  @override
  State<scr8> createState() => _scr8State();
}

class _scr8State extends State<scr8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(
          image: AssetImage("assets/back.png"),
        ),
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage("assets/profilepics.png"),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: Card(
                child: Expanded(
                  child: Row(
                    children: [
                      SizedBox(width: 15),
                      Container(
                        child: Icon(
                          Icons.account_box,
                          color: Colors.yellow,
                          size: 35,
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "My Account",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Edit personal info",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: Card(
                child: Row(
                  children: [
                    Flex(direction: Axis.horizontal),
                    SizedBox(width: 15),
                    Container(
                      child: Icon(
                        Icons.message,
                        color: Colors.yellow,
                        size: 35,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Support",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Talk to us",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    // SizedBox(width: 290),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 50,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: Card(
                child: Row(
                  children: [
                    Flex(direction: Axis.horizontal),
                    SizedBox(width: 15),
                    Container(
                      child: Icon(
                        Icons.payment,
                        color: Colors.yellow,
                        size: 35,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Payment",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Manage Your Payment Methods",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    // SizedBox(width: 290),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 50,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: Card(
                child: Row(
                  children: [
                    Flex(direction: Axis.horizontal),
                    SizedBox(width: 15),
                    Container(
                      child: Icon(
                        Icons.settings,
                        color: Colors.yellow,
                        size: 35,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Settings",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Terma & Conditions, Privasy, Licenses",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    // SizedBox(width: 290),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 50,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: Card(
                child: Row(
                  children: [
                    Flex(direction: Axis.horizontal),
                    SizedBox(width: 15),
                    Container(
                      child: Icon(
                        Icons.logout,
                        color: Colors.yellow,
                        size: 35,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Logout",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    // SizedBox(width: 290),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 50,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
