import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freenet/delayed_animation.dart';
import 'package:freenet/main.dart';
import 'package:freenet/screens/welcome_page.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.grey,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WelcomePage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                      child: Text(
                        "Connecter vous",
                        style: GoogleFonts.poppins(
                            color: myBlue,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      delay: 1500),
                  SizedBox(
                    height: 22,
                  ),
                  DelayedAnimation(
                      child: Text(
                        "Ici vous déclarez les objets que vous possédez et que vous pouvez mettre à la disposition des autres et vous avez accès à ceux des autres.",
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      delay: 2500),
                  SizedBox(
                    height: 35,
                  ),
                  LoginForm(),
                  SizedBox(
                    height: 80,
                  ),
                  DelayedAnimation(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              primary: myBlue,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 125, vertical: 13)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                          child: Text(
                            "Se connecter",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                      delay: 3500),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      DelayedAnimation(
                          child: Text("Je n'ai pas encore un compte !",
                              style: GoogleFonts.poppins(
                                  color: myBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          delay: 3500),
                      DelayedAnimation(
                          child: TextButton(
                              onPressed: () {},
                              child: DelayedAnimation(
                                  child: Text(
                                    "Inscription",
                                    style: GoogleFonts.poppins(
                                        color: myYellow,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  delay: 3500)),
                          delay: 3500),
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 50,
                          right: 20,
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: DelayedAnimation(
                                child: Text(
                                  "> SKIP",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                                delay: 4500)),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            DelayedAnimation(
                child: TextField(
                  decoration: InputDecoration(labelText: "Votre Mail"),
                ),
                delay: 3500),
            SizedBox(
              height: 30,
            ),
            DelayedAnimation(
                child: TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: "Mot de passe",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
                delay: 3500),
          ],
        ));
  }
}
