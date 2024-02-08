import 'package:flutter/material.dart';

class scr7 extends StatefulWidget {
  const scr7({super.key});

  @override
  State<scr7> createState() => _scr7State();
}

class _scr7State extends State<scr7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(
          image: AssetImage("assets/back.png"),
        ),
        title: Text(
          "Your Cart(0)",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 100),
              SizedBox(
                height: 270,
                width: 400,
                child: Card(
                  child: Image(
                    image: AssetImage("assets/imgpsh.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Your cart is empty!!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                "Add items to it now",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "ORDER NOW",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
