import 'package:freenet/screens/login_page.dart';
import 'package:freenet/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freenet/delayed_animation.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  height: 200,
                  child: Image.asset("images/logo_freenet_png.png"),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  height: 400,
                  child: Image.asset("images/img_1.png"),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                      "Notre plateforme FREENet met en relation les professionnels et notre communauté de 50.000 créatifs freelances",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Colors.grey, fontSize: 19)),
                ),
              ),
              DelayedAnimation(
                delay: 4500,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: myBlue,
                          shape: StadiumBorder(),
                          padding: EdgeInsets.all(13)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text("COMMENCER MAINTENANT")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
