import 'package:flutter/material.dart';
import 'package:travel/ui/OTP/otp_send_screen.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgotPasswordPage(),
    );
  }
}

class ForgotPasswordPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordPage();
  }
}

class _ForgotPasswordPage extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.only(top: 130, left: 25.5, right: 23.5),
                child: Image(
                  image: AssetImage("assets/fp1.png"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 80),
                child: Text(
                  "Please enter your registered email ID/Phone",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff3a5e44),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.7, left: 29.3, right: 28.7),
                alignment: Alignment.center,
                child: Text(
                  "   We will send a verification code to your registered ",
                  style: TextStyle(color: Color(0xff3a5e44)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "email ID/Phone",
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
                height: 60,
                margin: EdgeInsets.only(top: 70, left: 20, right: 16.7),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xff3a5e44)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xff3a5e44)),
                    ),

                    // border: OutlineInputBorder(),
                    labelText: "Email or Phone Number",
                    labelStyle: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xff3a5e44),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 37.7),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtpSend()),
                    );
                  },
                  color: Color(0xff3a5e44),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 150,
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Color(0xfffcfcfc),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
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
