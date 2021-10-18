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
                margin: EdgeInsets.only(top: 70),
                child: Image(
                  image: AssetImage("assets/signup.png"),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 26, left: 16),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      color: Color(0xff3a5e44),
                      //fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 16, left: 16, right: 16),
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
                      labelStyle:
                          TextStyle(color: Color(0xff3a5e44), fontSize: 12)),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 16, left: 16, right: 16),
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
                      labelStyle:
                          TextStyle(color: Color(0xff3a5e44), fontSize: 12)),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 16, left: 16, right: 16),
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
                      labelStyle:
                          TextStyle(color: Color(0xff3a5e44), fontSize: 12)),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 16, left: 16, right: 16),
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
                      labelStyle:
                          TextStyle(color: Color(0xff3a5e44), fontSize: 12)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 36),
                child: MaterialButton(
                  onPressed: () {},
                  color: Color(0xff3a5e44),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 35,
                    width: 130,
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Or Signup with",
                  style: TextStyle(color: Color(0xff3a5e44), fontSize: 12),
                ),
              ),
              Container(
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    child: Image(
                      image: AssetImage("assets/logo.png"),
                      height: 50,
                      width: 150,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                alignment: Alignment.center,
                child: Text(
                  "By using this app, you agree to our",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Terms of Use and privacy policy",
                    style: TextStyle(color: Color(0xff3a5e44), fontSize: 12)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
