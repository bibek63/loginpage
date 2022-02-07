import 'package:flutter/material.dart';
import "package:flutter_signin_button/flutter_signin_button.dart";

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
          margin: EdgeInsets.fromLTRB(20, 100, 20, 100),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(80),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(5, 5))
              ]),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("or create an account?"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  margin: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  margin: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Password"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Baseline(
                        baseline: 20,
                        baselineType: TextBaseline.alphabetic,
                        child: Text("Remember Me"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text("Sign in"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 100,
                  child: SignInButton(
                    Buttons.GoogleDark,
                    onPressed: () {},
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Forgot your Password?",
                      style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          )),
    );
  }
}
