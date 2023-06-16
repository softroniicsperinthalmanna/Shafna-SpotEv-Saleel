import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:spot_ev/Screens/User/navBar/home/homePage.dart';
import 'package:spot_ev/Screens/connect.dart';

import 'Screens/Station/BottomNavBarPage.dart';
import 'Screens/Station/home/HomePage.dart';
import 'Screens/User/navBar/navBar.dart';
import 'Screens/signup.dart';
import 'Screens/forgetPassword.dart';
import 'Screens/styles/textstyle.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.type}) : super(key: key);
  var type;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var visible = true;
  var mail = TextEditingController();
  var pass = TextEditingController();
  final formkey = GlobalKey<FormState>();
  Future<void> sendData() async {
    var data = {
      'email': mail.text,
      'password': pass.text,
      'user_type': widget.type,
    };
    var response = await post(Uri.parse('${con.url}/login.php'), body: data);
    jsonDecode(response.body);
    if (jsonDecode(response.body)['result'] == 'User successfully login') {
      if (widget.type == 'user') {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomNavBar()));
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user login')));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('station Login')));
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => StationBottomNavBArPage()));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Invalid Credential')));
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => LoginPage(type: widget.type)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 100,
              width: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/logoo.png'),
                      fit: BoxFit.contain)),
            ),
            Text(
              'Sign In',
              style: login,
            ),
            SizedBox(
              height: 55,
            ),
            Form(
                key: formkey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '    Email',
                        style: email,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 10,
                          color: Colors.black,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: mail,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              filled: true,
                              fillColor: Colors.grey[350],
                              hintText: 'ENTER YOUR EMAIL',
                              prefixIcon: Icon(
                                Icons.mail_outline_rounded,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '    Password',
                        style: email,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 10,
                          color: Colors.black,
                          child: TextFormField(
                            obscureText: visible,
                            controller: pass,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              filled: true,
                              fillColor: Colors.grey[350],
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      visible = !visible;
                                    });
                                  },
                                  icon: visible
                                      ? Icon(CupertinoIcons.eye_slash_fill)
                                      : Icon(CupertinoIcons.eye)),
                              hintText: 'ENTER YOUR PASSWORD',
                              prefixIcon: Icon(
                                Icons.lock_outline_rounded,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Center(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgetPassword()));
                                },
                                child: Text(
                                  'Forgot Password ?',
                                ))),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 340,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Color(0xff6C6CD5),
                                  ),
                                  onPressed: () {
                                    print(mail.text);
                                    print(pass.text);
                                    if (mail.text.isNotEmpty &&
                                        pass.text.isNotEmpty) {
                                      print('inside if');
                                      setState(() {
                                        sendData();
                                      });
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text('All fields required')));
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => LoginPage(
                                                  type: widget.type)));
                                    }

                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavBar()));
                                  },
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                            Text('or'),
                            Text('Continue with'),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 170,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white),
                                        onPressed: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Icon(
                                                  Icons.facebook,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '  FACEBOOK',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        )),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 170,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white),
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Container(
                                                  height: 32,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/googlee.png'),
                                                  )),
                                                )),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '  GOOGLE',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 60,
                                ),
                                Text(
                                  'Don\'t Have an Account?',
                                  style: email,
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => signUPPage(
                                                    type: widget.type,
                                                  )));
                                    },
                                    child: Text(
                                      'Sign Up',
                                    ))
                              ],
                            ),
                          ],
                        ),
                      )
                    ])),
          ]),
        ),
      ),
    );
  }
}
