import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel/ui/registration_screen/forgot_pass_screen.dart';

class OtpSend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: OtpSendPage(),

   );
  }

}
class OtpSendPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OtpSendPageState();
  }
}
class _OtpSendPageState extends State<OtpSendPage>{
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
                    image: AssetImage("assets/otp.png"),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 60),
                  child: Text("Please enter your verification code",
                    style: TextStyle(color: Color(0xff3a5e44),
                        // fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 16,right: 16),
                  alignment: Alignment.center,
                  child: Text("   We have sent a verification code to your registered ",
                    style: TextStyle(color: Color(0xff3a5e44)),),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("email ID/Phone",
                    style: TextStyle(color: Color(0xff3a5e44)),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 40,left: 24,right: 24),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(
                      flex: 1,
                        child: Container(
                          child: TextField(decoration: new InputDecoration(),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], style: TextStyle(color:  Color(0xff3a5e44),// Only numbers can be entered
                          ),

                        ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: TextField(decoration: new InputDecoration(),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                          ),

                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: TextField(decoration:  new InputDecoration(),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                          ),

                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: TextField(decoration: new InputDecoration(),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ForgotPassword1()),
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