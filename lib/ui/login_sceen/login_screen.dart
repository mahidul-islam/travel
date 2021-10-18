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
  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      // Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => SignUp()),
      //               );
    };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _inputNumberOneController = TextEditingController();

  var email = "mmm@gamil.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("LoginPage"),
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 64, left: 16),
                child: Text(
                  "Welcome",
                  style: TextStyle(fontSize: 25, color: Color(0xff3a5e44)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 4, left: 16),
                child: Text(
                  "Log in to continue",
                  style: TextStyle(fontSize: 10, color: Color(0xff3a5e44)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20),
                child: Image(
                  image: AssetImage("assets/car.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, right: 16, left: 24),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Color(0xff3a5e44),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Form(
                key: _formKey,
                child: Container(
                  height: 62,
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: TextField(
                    controller: _inputNumberOneController,
                    decoration: InputDecoration(
                      // prefixIcon: Icon(
                      //   Icons.attach_email,
                      //   color: Colors.grey,
                      // ),
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
                        labelText: "Email",
                        labelStyle:
                        TextStyle(color: Color(0xff3a5e44), fontSize: 12)),
                  ),
                ),
              ),
              Container(
                height: 60,
                padding: EdgeInsets.only(top: 10, left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    // prefixIcon: Icon(
                    //   Icons.lock,
                    //   color: Colors.grey,
                    // ),
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
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 50),
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
                        color: Color(0xff3a5e44),
                        decoration: TextDecoration.underline,
                        decorationThickness: 2),
                  ),
                ),
              ),
              Container(
                // height: 56,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                child: MaterialButton(
                  color: Color(0xff3a5e44),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      var inputValues = _inputNumberOneController.text;
                      print("Right input " + inputValues);
                      }

                  },

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      height: 35,
                      width: 150,
                      margin: EdgeInsets.only(top: 15),
                      child: Text("Login",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          textAlign: TextAlign.center)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: (EdgeInsets.only(top: 25)),
                child: Text(
                  "Or Login with",
                  style: TextStyle(color: Color(0xff3a5e44), fontSize: 12),
                ),
              ),
              Container(
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 24),
                    child: Image(
                      image: AssetImage("assets/logo.png"),
                      height: 50,
                      width: 150,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an Account? ",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: "Signup",
                              style: TextStyle(
                                  color: Color(0xff3a5e44),
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  fontWeight: FontWeight.bold),
                              recognizer: _gestureRecognizer),
                        ]),
                  ),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //      // margin: EdgeInsets.only(top: 16),
              //       child: MaterialButton(
              //         onPressed: () {},
              //         textColor: Colors.grey,
              //         child: Text(
              //           "Don't have account?",
              //           style: TextStyle(),
              //         ),
              //       ),
              //     ),
              //     Container(
              //       child: MaterialButton(
              //         onPressed: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => SignUp()),
              //           );
              //         },
              //         textColor: MyColors.primaryColor,
              //         child: Text(
              //           "Sign up",
              //           style: TextStyle(),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
