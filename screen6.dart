import 'package:flutter/material.dart';

class scr6 extends StatefulWidget {
  const scr6({super.key});

  @override
  State<scr6> createState() => _scr6State();
}

class _scr6State extends State<scr6> {
  int _selectedIndex = 0;

  Widget crtrow(String s1, String s2, String s3) {
    return Row(
      children: [
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$s1",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("$s2")
          ],
        ),
        SizedBox(width: 105),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 90,
              child: Center(child: Text("$s3")),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
        SizedBox(width: 105),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                child: Image(
                    image: AssetImage("assets/placedicon.png"),
                    height: 30,
                    width: 30)),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(
          image: AssetImage("assets/back.png"),
        ),
        title: Text(
          "Orders",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            crtrow("2022-12-12", "INV - 202221243516", "7.54"),
            Divider(),
            crtrow("2022-09-09", "INV - 202229836458", "7.54"),
            Divider(),
            crtrow("2022-09-09", "INV - 202224253464", "23.65"),
            Divider(),
            crtrow("2022-08-31", "INV - 202221243516", "7.54"),
            Divider(),
            crtrow("2022-09-06", "INV - 202227985123", "7.54"),
            Divider(),
            crtrow("2022-08-28", "INV - 202221245987", "7.54"),
            Divider(),
            crtrow("2022-05-08", "INV - 202229856324", "7.54"),
          ],
        ),
      ),
    );
  }
}
