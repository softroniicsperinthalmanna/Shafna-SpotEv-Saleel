import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/styles/textstyle.dart';
class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xff5A5AD2),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                )
            ),
            child: Row(
              children: [
                IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon:Icon( Icons.arrow_back,color: Colors.white,) ),
                SizedBox(width: 60,),
                Text('Forgot Password',style: booking,textAlign: TextAlign.center,),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Text('Enter New Password',textAlign:TextAlign.center,style: TextStyle(color: Color(0xff5A5AD2),fontSize: 18),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text('Your new password should be different from old password',textAlign:TextAlign.center,style:TextStyle(
                    fontSize: 18
                ),),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 260),
              //   child: Text('New Password',textAlign: TextAlign.start,),
              // ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'New password',
                      prefixIcon: Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff0000FF),
                          )
                      )
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 245),
              //   child: Text('Confirm Password',textAlign: TextAlign.start,),
              // ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                      prefixIcon: Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff0000FF),
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Color(0xff5A5AD2),
                      ),
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordVerification()));
                      }, child: Text('Continue')))
            ],
          ),

        ],
      ),
    );
  }
}
