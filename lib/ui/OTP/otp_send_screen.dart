import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel/ui/registration_screen/forgot_pass_screen.dart';

class OtpSend extends StatelessWidget {
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

class _OtpSendPageState extends State<OtpSendPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _inputNumberOneController = TextEditingController();
  TextEditingController _inputNumberTwoController = TextEditingController();
  TextEditingController _inputNumberThreeController = TextEditingController();
  TextEditingController _inputNumberFourController = TextEditingController();

  var otp = "0011";

  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

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
                child: Text(
                  "Please enter your verification code",
                  style: TextStyle(
                      color: Color(0xff3a5e44),
                      // fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 16, right: 16),
                alignment: Alignment.center,
                child: Text(
                  "   We have sent a verification code to your registered ",
                  style: TextStyle(color: Color(0xff3a5e44)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "email ID/Phone",
                  style: TextStyle(color: Color(0xff3a5e44)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 60, right: 60),
                alignment: Alignment.center,
                child: Form(
                  key: _formKey,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          child: TextFormField(
                            controller: _inputNumberOneController,
                            // focusNode: pin2FocusNode,
                            autofocus: true,
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Color(0xff3a5e44)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Color(0xff3a5e44)),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: TextStyle(
                              color: Color(
                                  0xff3a5e44), //// Only numbers can be entered
                            ),
                            onChanged: (value) {
                              nextField(value: value, focusNode: pin2FocusNode);
                            },
                          ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 5,
                        child: Container(
                          child: TextFormField(
                            controller: _inputNumberTwoController,
                            focusNode: pin2FocusNode,
                            autofocus: true,
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Color(0xff3a5e44)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Color(0xff3a5e44)),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            //
                            onChanged: (value) {
                              nextField(value: value, focusNode: pin3FocusNode);
                            }, // Only numbers can be entered
                          ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 5,
                        child: Container(
                          child: TextFormField(
                            controller: _inputNumberThreeController,
                            focusNode: pin3FocusNode,
                            autofocus: true,
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Color(0xff3a5e44)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Color(0xff3a5e44)),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            //
                            onChanged: (value) {
                              nextField(value: value, focusNode: pin4FocusNode);
                            }, // Only numbers can be entered
                          ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 5,
                        child: Container(
                          child: TextFormField(
                            controller: _inputNumberFourController,
                            focusNode: pin4FocusNode,
                            autofocus: true,
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Color(0xff3a5e44)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Color(0xff3a5e44)),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onChanged: (value) {
                              pin4FocusNode.unfocus();
                            }, // Only numbers can be entered
                            // validator: (value){
                            //   if(value!.isEmpty){
                            //     return "Input can not be empty";
                            //   }else if(value.length <= 4){
                            //     return "Input 4 digit of code";
                            //   }else
                            //     return null;
                            // },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(top: 30), child: buildTimer()),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50),
                  child: bottomButton()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Did't get the OTP?",
                      style: TextStyle(color: Color(0xff3a5e44)),
                    ),
                  ),
                  Container(
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Resend OTP",
                        style: TextStyle(
                          color: Color(0xff3a5e44),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomButton() {
    return MaterialButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          var inputValues = _inputNumberOneController.text +
              _inputNumberTwoController.text +
              _inputNumberThreeController.text +
              _inputNumberFourController.text;
          print("Otp verified " + inputValues);
          if (inputValues.trim() == otp) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ForgotPassword1()),
            );
          } else {
            print("otp does not match");
            // otp does not match
          }
        } else {
          print("Filed can not be empty");
          // Filed can not be empty
        }
      },
      color: Color(0xff3a5e44),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 35,
        width: 130,
        margin: EdgeInsets.only(top: 15),
        child: Text(
          "Next",
          style: TextStyle(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in ",
            style: TextStyle(color: Color(0xff3a5e44)),
            textAlign: TextAlign.center),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0),
          duration: Duration(seconds: 60),
          builder: (context, value, child) => Text("1:${value!.toString()}",
              style: TextStyle(
                color: Color(0xff3a5e44),
              )),
          onEnd: () {},
        ),
      ],
    );
  }
}
