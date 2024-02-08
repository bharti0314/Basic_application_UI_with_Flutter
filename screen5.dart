import 'package:flutter/material.dart';

class scr5 extends StatefulWidget {
  const scr5({super.key});

  @override
  State<scr5> createState() => _scr5State();
}

class _scr5State extends State<scr5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(
          image: AssetImage("assets/back.png"),
        ),
        title: Text(
          "Wishlist",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        SizedBox(height: 10),
        Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromARGB(178, 242, 242, 242),
          ),
          child: TextField(
            decoration: InputDecoration(
              label: Text("1 Result"),
              suffixIcon: Image(
                image: AssetImage("assets/filter.png"),
                height: 30,
                width: 30,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              SizedBox(width: 10),
              Column(
                children: [
                  Image(
                    image: AssetImage("assets/catagory 4.png"),
                    height: 130,
                    width: 120,
                  )
                ],
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Taj Mahal",
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Taj Mahal",
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "7.00 (dollers)",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "save 30%",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blueGrey),
                  ),
                ],
              ),
              Column(
                children: [
                  Image(
                    image: AssetImage("assets/addbrn.png"),
                    height: 20,
                    width: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
