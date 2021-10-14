import 'package:flutter/material.dart';
import 'package:travel/ui/OTP/otp_send_screen.dart';

class ForgotPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgotPasswordPage(),
    );
  }
}
class ForgotPasswordPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordPage();
  }
}

class _ForgotPasswordPage extends State<ForgotPasswordPage>{
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
                margin: EdgeInsets.only(top: 100),
                child: Image(
                  image: AssetImage("assets/fp1.png"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 60),
                child: Text("Please enter your registered email ID/Phone",
                style: TextStyle(fontSize: 16,
                color: Color(0xff3a5e44),
                fontWeight: FontWeight.bold),
              ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 60, left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Color(0xff3a5e44)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        borderSide: BorderSide(color: Color(0xff3a5e44)),
                      ),

                      // border: OutlineInputBorder(),
                      labelText: "Email or Phone Number",
                      labelStyle: TextStyle(color: Color(0xff3a5e44),fontSize: 12)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 16,right: 16),
                alignment: Alignment.center,
                child: Text("   We will send a verification code to your registered ",
                style: TextStyle(color: Color(0xff3a5e44)),),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("email ID/Phone",
                  style: TextStyle(color: Color(0xff3a5e44)),),
              ),
              Container(
                 alignment: Alignment.center,
                margin: EdgeInsets.only(top: 60),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtpSend()),
                    );
                  },
                  color: Color(0xff3a5e44),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 35,
                      width: 130,
                      margin: EdgeInsets.only(top: 15),
                      child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,
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