import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/styles/textstyle.dart';
class signUPPage extends StatelessWidget {
  const signUPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Text('Sign Up',style: login,),
            SizedBox(height: 40,),
            Column(
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
                )
              ],
            ),
            SizedBox(height: 6,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('    Mobile No',style: email,),
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
                        hintText: 'ENTER YOUR PHONE NUMBER',
                        prefixIcon: Icon(Icons.phone_outlined,),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 6,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

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
            SizedBox(height: 6,),
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
                        prefixIcon: Icon(Icons.lock_outline,),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 6,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('    Confirm Password',style: email,),
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
                        hintText: 'CONFIRM PASSWORD',
                        prefixIcon: Icon(Icons.lock_outline,),
                      ),
                    ),
                  ),
                )
              ],
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
                    backgroundColor: Color(0xff0000FF),



                  ),
                  onPressed: (){}, child: Text('REGISTER', style: TextStyle(color: Colors.white),)),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60,),
                Text('Have an Account?',style: email,),
                TextButton(onPressed: (){}, child: Text('Sign In',style: email,))

              ],
            ),


          ],
        ),
      ),
    );
  }
}
