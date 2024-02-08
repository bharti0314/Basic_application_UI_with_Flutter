import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_12/screens/screen2.dart';
import 'package:flutter_application_12/screens/screen4.dart';
import 'package:flutter_application_12/screens/screen9.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class scr1 extends StatefulWidget {
  const scr1({super.key});

  @override
  State<scr1> createState() => _scr1State();
}

class _scr1State extends State<scr1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image(
          image: AssetImage("assets/karmalogo.png"),
          height: 400,
          width: 400,
          color: Colors.yellow,
        ),
        backgroundImage: AssetImage("assets/karmabg.png"),
        loadingTextPadding: EdgeInsets.all(20),
        loaderColor: Colors.yellow,
        loadingText: Text(
          "We serve you the greate indian taste  prepared with handpicked ingrediants and expert chefs.",
          style: GoogleFonts.tomorrow(
            textStyle: Theme.of(context).textTheme.displaySmall,
            fontSize: 11,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        navigator: scr2(),
        durationInSeconds: 4,
        showLoader: true,
      ),

      /*Image: AssetImage("assets/karmabg.png"),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,(
            
          )*/

      /*Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image(
              image: AssetImage("assets/karmabg.png"),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 70),
                  Image(
                    image: AssetImage("assets/karmalogo.png"),
                    height: 200,
                    width: 200,
                    color: Colors.yellow,
                  ),
                  SizedBox(height: 300),
                  Container(
                    width: 300,
                    child: Text(
                      "We serve you the greate indian taste  prepared with handpicked ingrediants and expert chefs.",
                      style: GoogleFonts.tomorrow(
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontSize: 11,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),*/
    );
  }
}
