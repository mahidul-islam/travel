import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.only(top: 70, left: 23.7, right: 25),
                child: Image(
                  image: AssetImage("assets/signup.png"),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 13.6, left: 18.7),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff3a5e44),
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 11.5, left: 18.7, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Color(0xff3a5e44)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Color(0xff3a5e44)),
                    ),

                    // border: OutlineInputBorder(),
                    labelText: "User name",
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xff3a5e44),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 11.5, left: 18.7, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Color(0xff3a5e44)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Color(0xff3a5e44)),
                    ),

                    // border: OutlineInputBorder(),
                    labelText: "Email or Phone Number",
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xff3a5e44),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 11.5, left: 18.7, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Color(0xff3a5e44),
                    ),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Color(0xff3a5e44)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Color(0xff3a5e44)),
                    ),

                    // border: OutlineInputBorder(),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xff3a5e44),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 11.5, left: 18.7, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Color(0xff3a5e44),
                    ),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Color(0xff3a5e44)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Color(0xff3a5e44)),
                    ),

                    // border: OutlineInputBorder(),
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xff3a5e44),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 40.3),
                child: MaterialButton(
                  onPressed: () {},
                  color: Color(0xff3a5e44),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 150,
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Raleway",
                          fontStyle: FontStyle.normal,
                          fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 9.1),
                child: Text(
                  "Or Signup with",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff3a5e44),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15.6),
                    child: Image(
                      image: AssetImage("assets/logo.png"),
                      height: 38,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 12.5),
                alignment: Alignment.center,
                child: Text(
                  "By using this app, you agree to our",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff171917),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Terms of Use and privacy policy",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff3a5e44),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
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
