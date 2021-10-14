import 'package:flutter/material.dart';

class ForgotPassword1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgotPasswordPage1(),
    );
  }
}
class ForgotPasswordPage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _ForgotPasswordPage1();
  }
}

class _ForgotPasswordPage1 extends State<ForgotPasswordPage1>{
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
               margin: EdgeInsets.only(top: 100,left: 16),
               child: Image(
                 image: AssetImage("assets/fp.png"),
               ),
             ),
             Container(
               alignment: Alignment.center,
               margin: EdgeInsets.only(top: 60),
               child: Text("Please enter your new password",
                 style: TextStyle(color: Color(0xff3a5e44),
                    // fontWeight: FontWeight.bold,
                     fontSize: 16),
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
                       borderRadius: BorderRadius.all(Radius.circular(8.0)),
                       borderSide: BorderSide(color: Color(0xff3a5e44)),
                     ),

                     // border: OutlineInputBorder(),
                     labelText: "Password",
                     labelStyle: TextStyle(color: Color(0xff3a5e44),fontSize: 12)),
               ),
             ),
             Container(
               height: 60,
               margin: EdgeInsets.only(top: 24, left: 16, right: 16),
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
                     labelText: "Confirm Password",
                     labelStyle: TextStyle(color: Color(0xff3a5e44),fontSize: 12)),
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