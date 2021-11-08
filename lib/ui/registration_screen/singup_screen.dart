import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

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

  bool ishiddenPassword = true;

   String? _name,_email;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Form(
            key: _formKey,
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
                  height: 65,
                  padding: EdgeInsets.only(top: 11.5, left: 18.7, right: 18),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
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
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Please enter name";
                      }
                      return null;
                    },
                    // onSaved: (String? name){
                    //   _name = _name!;
                    // },
                  ),
                ),
                Container(
                //  height: 60,
                  margin: EdgeInsets.only(top: 11.5, left: 18.7, right: 18),
                  child: TextFormField(
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
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Please enter email";
                      }
                      if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+[a-z]").hasMatch(value))
                        {
                          return "Please enter valid email";
                        }return null;
                    },
                    // onSaved: (String? name){
                    //   _email = _email!;
                    // },
                  ),
                ),
                Container(
                 // height: 60,
                  margin: EdgeInsets.only(top: 11.5, left: 18.7, right: 18),
                  child: TextFormField(
                    obscureText: ishiddenPassword,
                    controller: _password,
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
                        fontStyle: FontStyle.normal,
                      ),
                      suffixIcon: IconButton(
                          icon : Icon(ishiddenPassword? Icons.visibility_off:Icons.visibility),
                        color: Color(0xff3a5e44), onPressed: () {
                            ishiddenPassword =! ishiddenPassword;
                            setState(() {
                            });
                      }
                      ),
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Please enter password";
                      }
                       return null;
                    },
                  ),
                ),
                Padding(
                  // child: Container(
                  // //  height: 60,
                    padding: EdgeInsets.only(top: 11.5, left: 18.7, right: 18),
                    child: TextFormField(
                      obscureText: ishiddenPassword,
                      controller: _confirmPassword,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon : Icon(ishiddenPassword? Icons.visibility_off:Icons.visibility),
                            color: Color(0xff3a5e44), onPressed: () {
                          ishiddenPassword =! ishiddenPassword;
                          setState(() {
                          });
                        }
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
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Please re-enter password";
                      }
                      if(_password.text != _confirmPassword.text)
                      {
                        return "Password do not match";
                      }return null;
                    },
                    ),
                  ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 40.3),
                  child: MaterialButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate())
                        {
                          print("Sucessfull");
                         return;
                        }else
                          {
                            print("Not worked");
                          }
                    },
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
      ),
    );
  }
}
