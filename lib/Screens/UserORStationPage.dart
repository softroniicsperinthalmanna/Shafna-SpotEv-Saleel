import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/Station/home/HomePage.dart';
import 'package:spot_ev/login.dart';
class USerORStationPage extends StatelessWidget {
   USerORStationPage({Key? key}) : super(key: key);
// var type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 100,
                width: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logoo.png'),fit: BoxFit.contain

                  )
                ),
              ),
            ),
            SizedBox(height: 40,),
            Text('join the electric \n  rEVELUTION',style: TextStyle(color: Color(0xff5A5AD2),fontSize: 25,fontWeight: FontWeight.bold),),
           SizedBox(height: 90,),
            Text('Make Vehicle charging easy',style: TextStyle(color: Color(0xff1818C8),fontSize: 25),),
            SizedBox(height: 70,),
            Container(
                height: 70,
                width: 180,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff5A5AD2),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage(
                        type: "user",
                      )));
                    }, child: Text('USER',style: TextStyle(fontSize: 20),))),
            SizedBox(height: 30,),
            Container(
                height: 70,
                width: 180,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff5A5AD2),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(
                        type: "station",
                      )));
                    }, child: Text('STATION',style: TextStyle(fontSize: 20),)))
          ],
        ),
      ),
    );
  }
}
