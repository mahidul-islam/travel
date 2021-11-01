import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel/core/my_colors.dart';
import 'package:travel/ui/registration_screen/forgot_pass1_screen.dart';
import 'package:travel/ui/registration_screen/singup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  var email = "mmm@gamil.com";
  var pass = "0000";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("LoginPage"),
      // ),
      body: SingleChildScrollView(
        child: Container(
          //  margin: EdgeInsets.only(bottom: 24),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 64, left: 24),
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Color(0xff3a5e44),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 0.7, left: 25.2),
                child: Text(
                  "Log in to continue",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      color: Color(0xff3a5e44),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 17.7, left: 41, right: 41),
                child: Image(
                  image: AssetImage("assets/car.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.4, left: 18.3),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff3a5e44),
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Container(
                  height: 65,
                  padding: EdgeInsets.only(top: 12.1, left: 18.3, right: 18.3),
                  child: TextFormField(
                    validator: (value) {
                      return null;
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                      // prefixIcon: Icon(
                      //   Icons.attach_email,
                      //   color: Colors.grey,
                      // ),
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
                      labelText: "Email",
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
              ),
              Container(
                height: 65,
                padding: EdgeInsets.only(top: 12.1, left: 18.3, right: 18.3),
                child: TextFormField(
                  controller: _passController,
                  validator: (value) {
                    return null;
                  },
                  decoration: InputDecoration(
                    // prefixIcon: Icon(
                    //   Icons.lock,
                    //   color: Colors.grey,
                    // ),
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
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 35.9),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    ); // forgotPass(context);
                  },
                  //textColor: Colors.grey,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xff3a5e44),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15.6),
                child: MaterialButton(
                  color: Color(0xff3a5e44),
                  onPressed: () {
                    if (_emailController.text.isEmpty) {
                      print("Email field is empty");
                    } else if (_passController.text.isEmpty) {
                      print("Password field is empty");
                    } else {
                      if (email.trim() !=
                          _emailController.text.toString().trim()) {
                        print("Invalid Email");
                      } else if (pass.trim() !=
                          _passController.text.toString().trim()) {
                        print("Invalid Pass");
                      } else {
                        print("navigate");
                      }
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 160,
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      "Login",
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
              Container(
                alignment: Alignment.center,
                margin: (EdgeInsets.only(top: 12.4)),
                child: Text(
                  "Or Login with",
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
                    margin: EdgeInsets.only(top: 19),
                    child: Image(
                      image: AssetImage("assets/logo.png"),
                      height: 50,
                      width: 150,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 14.9),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an Account? ",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xff3a5e44),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        children: [
                          TextSpan(
                              text: "Signup",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xff3a5e44),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()),
                                  );
                                }),
                        ]),
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
