import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/User/navBar/home/homePage.dart';

import 'Screens/User/navBar/navBar.dart';
import 'Screens/signup.dart';
import 'Screens/forgetPassword.dart';
import 'Screens/styles/textstyle.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 140,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logoo.png')
                )
              ),
            ),
            Text('Sign In',style: login,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 55,),
                Text('    Email',style: email,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 10,
                    color: Colors.black,
                    child: TextFormField(
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
                )
              ],
            ),
            SizedBox(height: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('    Password',style: email,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 10,
                    color: Colors.black,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[350],
                        hintText: 'ENTER YOUR PASSWORD',
                        prefixIcon: Icon(Icons.lock_outline_rounded,),
                      ),
                    ),
                  ),
                ),

              ],

            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Center(child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
              },child: Text('Forgot Password ?',))),
            ),
            SizedBox(height: 40,),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 340,

                    child: ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          backgroundColor: Color(0xff6C6CD5),



                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavBar()));
                        }, child: Text('LOGIN', style: TextStyle(color: Colors.white),)),
                  ),
                  Text('or'),
                  Text('Continue with'),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 170,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white
                              ),
                              onPressed: (){}, child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(

                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.facebook, color: Colors.blue,),
                                ),
                                SizedBox(width: 10,),
                                Text('  FACEBOOK', style: TextStyle(
                                    color: Colors.black
                                ),)
                              ],
                            ),
                          )
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 170,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white
                            ),
                            onPressed: (){}, child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container
                                      (
                                      height: 32,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/googlee.png'),
                                          )
                                      ),
                                    )
                                ),
                                SizedBox(width: 10,),
                                Text('  GOOGLE', style: TextStyle(
                                    color: Colors.black
                                ),)
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
                      SizedBox(height: 60,),
                      Text('Don\'t Have an Account?',style: email,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>signUPPage()));
                      }, child: Text('Sign Up',))

                    ],
                  ),


                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
