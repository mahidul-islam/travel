import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:travel/singup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      title: 'LoginPage',
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("LoginPage"),
      // ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
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
              margin: EdgeInsets.only(top: 16,right: 16,left: 24),
              child: Text(
                "Login",style: TextStyle(color: Color(0xff3a5e44),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.attach_email,
                      color: Colors.grey,
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
                    labelText: "Email",
                    labelStyle: TextStyle(color: Color(0xff3a5e44))),
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.only(top: 10, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
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
                    labelStyle: TextStyle(color: Color(0xff3a5e44))),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 4),
              child: FlatButton(
                onPressed: () {
                  // forgotPass(context);
                },
                textColor: Colors.grey,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(),
                ),
              ),
            ),
            Container(
              height: 56,
              alignment: Alignment.center,
              // margin: EdgeInsets.only(left: 48,right: 48),
              child: MaterialButton(
                  color: Color(0xff3a5e44),
                  onPressed: () {  },
                  child: Image(
                    image: AssetImage("assets/login.png",),height: 80,width: 180,
                  )
              ),
            ),
            Container(
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 24),
                  child: Image(
                    image: AssetImage("assets/logo.png"),height: 50,width: 150,
                  )),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 16),
              child: FlatButton(
                onPressed: () {},
                textColor: Colors.grey,
                child: Text(
                  "Don't have account?",
                  style: TextStyle(),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              //margin: EdgeInsets.only(top: 0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );

                },
                textColor: Color(0xff3a5e44),
                child: Text(
                  "Sign up",
                  style: TextStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}