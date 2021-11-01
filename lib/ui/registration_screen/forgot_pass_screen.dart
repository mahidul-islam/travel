import 'package:flutter/material.dart';

class ForgotPassword1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgotPasswordPage1(),
    );
  }
}

class ForgotPasswordPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordPage1();
  }
}

class _ForgotPasswordPage1 extends State<ForgotPasswordPage1> {
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
                margin: EdgeInsets.only(top: 100, left: 25.5, right: 23.5),
                child: Image(
                  image: AssetImage("assets/fp.png"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 80),
                child: Text(
                  "Please enter your new password",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff3a5e44),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                height: 65,
                margin: EdgeInsets.only(top: 70, left: 16, right: 16),
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
                    labelText: "Password",
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
                height: 65,
                margin: EdgeInsets.only(top: 15, left: 16, right: 16),
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
                    labelText: "Confirm Password",
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
                margin: EdgeInsets.only(top: 60),
                child: MaterialButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //   MaterialPageRoute(builder: (context) => OtpSend()),
                    // );
                  },
                  color: Color(0xff3a5e44),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    alignment: Alignment.center,
                    height: 38,
                    width: 150,
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Color(0xfffcfcfc),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.center,
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
