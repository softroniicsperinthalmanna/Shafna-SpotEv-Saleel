import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:spot_ev/Screens/connect.dart';
import 'package:spot_ev/Screens/styles/textstyle.dart';

import '../login.dart';
import 'User/navBar/home/homePage.dart';
import 'User/navBar/navBar.dart';
class signUPPage extends StatefulWidget {
   signUPPage({Key? key,required this.type}) : super(key: key);
var type;

  @override
  State<signUPPage> createState() => _signUPPageState();
}

class _signUPPageState extends State<signUPPage> {
  var visibility=true;
  var visibility1=true;
var name=TextEditingController();

var mobile_no=TextEditingController();

var mail=TextEditingController();

var pass=TextEditingController();

var CPass=TextEditingController();

final formkey=GlobalKey<FormState>();

Future<void> sendData_user() async {
  var data={
    'name':name.text,
    'mobile_no':mobile_no.text,
    'email':mail.text,
    'password':pass.text,
    'user_type':widget.type,
  };
  var response=await post(Uri.parse('${con.url}/UserRegistration.php'),body: data);
  print(response.body);
  jsonDecode(response.body);
  if(jsonDecode(response.body)['result']=='Success'){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registered Successfully')));
    Navigator.pop(context);
  }
  else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registration Failed')));
    Navigator.pop(context);

  }
}
  Future<void> sendData_station() async {
    var data={
      'name':name.text,
      'mobile_no':mobile_no.text,
      'email':mail.text,
      'password':pass.text,
      'user_type':widget.type,
    };
    var response=await post(Uri.parse('${con.url}/stationRegistration.php'),body: data);
    print(response.body);
    jsonDecode(response.body);
    if(jsonDecode(response.body)['result']=='Success'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registered Successfully')));
      Navigator.pop(context);
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registration Failed')));
      Navigator.pop(context);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Text('Sign Up',style: login,),
            SizedBox(height: 40,),
            Form(
             key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text('    User Name',style: email,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      color: Colors.black,
                      child: TextFormField(
                        validator: (val){
                          if(val!.isEmpty){
                            return "Field Required";
                          }

                        },
                        controller: name,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                          filled: true,
                          fillColor: Colors.grey[350],
                          hintText: 'ENTER YOUR NAME',
                          prefixIcon: Icon(Icons.person_outline,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text('    Mobile No',style: email,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      color: Colors.black,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (val){
                          if(val!.toString().length==10 && val!.isEmpty){
                            return "Field Reuired";
                          }
                        },
                        controller: mobile_no,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                          filled: true,
                          fillColor: Colors.grey[350],
                          hintText: 'ENTER YOUR PHONE NUMBER',
                          prefixIcon: Icon(Icons.phone_outlined,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text('    Email',style: email,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      color: Colors.black,
                      child: TextFormField(
                        validator: (val){
                         if(val!.isEmpty){
                           return "Field Required";
                         }
                        },
                        controller: mail,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                          filled: true,
                          fillColor: Colors.grey[350],
                          hintText: 'ENTER YOUR EMAIL',
                          prefixIcon: Icon(Icons.mail_outline_rounded,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text('    Password',style: email,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      color: Colors.black,
                      child: TextFormField(
                        validator: (val){
                          if(val!.length<=8 && val!.isEmpty){
                            return 'Password Required or too short';
                          }
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: visibility,
                        controller: pass,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: () {
                            setState(() {
                              visibility=!visibility;
                            });
                          }, icon: (visibility)?Icon(CupertinoIcons.eye_slash_fill):Icon(CupertinoIcons.eye),),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                          filled: true,
                          fillColor: Colors.grey[350],
                          hintText: 'ENTER YOUR PASSWORD',
                          prefixIcon: Icon(Icons.lock_outline,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text('    Confirm Password',style: email,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      color: Colors.black,
                      child: TextFormField(
                        validator: (val){
                          if((val!.length)<=8 || val!.isEmpty){
                            return 'Password Required or too short';
                          }
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: visibility1,
                        controller: CPass,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: () {
                            setState(() {
                              visibility1=!visibility1;
                            });

                          }, icon: visibility1?Icon(CupertinoIcons.eye_slash_fill):Icon(CupertinoIcons.eye)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                          filled: true,
                          fillColor: Colors.grey[350],
                          hintText: 'CONFIRM PASSWORD',
                          prefixIcon: Icon(Icons.lock_outline,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 40,
                    width: 350,
                    child: ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          backgroundColor: Color(0xff6C6CD5),



                        ),
                        onPressed: (){
                          print(name.text);
                          print(mobile_no.text);
                          print(mail.text);
                          print(pass.text);
                          if(formkey.currentState!.validate()) {
                            if (pass.text == CPass.text)
                              widget.type=='user'?
                              sendData_user():sendData_station();
                            else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(
                                      'Password missmatch found!!')));
                            }
                          }

                          // Navigator.pop(context);
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(
                          //   type: 'user',
                          // )));

                        }, child: Text('REGISTER', style: TextStyle(color: Colors.white),)),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 60,),
                      Text('Have an Account?',style: email,),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      }, child: Text('Sign In',style: email,))

                    ],
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
