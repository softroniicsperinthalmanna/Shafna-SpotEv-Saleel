import 'package:flutter/material.dart';

import '../../../styles/textstyle.dart';
import 'StationTabBar.dart';
class StationDetailsAndTabBar extends StatelessWidget {
  const StationDetailsAndTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: IconButton(icon: Icon(Icons.arrow_back_rounded), onPressed: () {
                Navigator.pop(context);
              },),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10,),
                  Icon(Icons.more_vert_sharp)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('YX Vestby',style: TextStyle(color: Color(0xff0000FF),fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('45 KM',style: email,),
                  Text('AVAILABLE',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(' 4.0',style: black,),
                  Text(' (300)')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(Icons.star,color: Colors.amber,),
                      );
                    }),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Icon(Icons.family_restroom,color: Colors.black,),
                      Text('Restroom',style: TextStyle(color: Color(0xff0000FF),fontSize: 10),)
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(

                    children: [

                      Icon(Icons.coffee_rounded,color: Colors.black,),
                      Text('Cafe',style: TextStyle(color: Color(0xff0000FF),fontSize: 10),)
                    ],
                  ),
                  SizedBox(width: 14,),Column(
                    children: [

                      Icon(Icons.local_grocery_store,color: Colors.black,),
                      Text('Store',style: TextStyle(color: Color(0xff0000FF),fontSize: 10),)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 120,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Color(0xff0000FF),
                          foregroundColor: Colors.white
                      ),
                      onPressed: (){}, child: Row(
                    children: [
                      Icon(Icons.turn_right_sharp),
                      SizedBox(width: 5,),
                      Text('Direction'),
                    ],

                  )),
                ),

                Container(
                  height: 40,
                  width: 120,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: Color(0xff0000FF),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Color(0xffFFFFFF),
                          foregroundColor: Colors.black
                      ),
                      onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.navigation,color: Colors.blueAccent,),
                      SizedBox(width: 5,),
                      Text('Start',style: TextStyle(color: Colors.blue),),
                    ],
                  )),
                ),
                Container(
                  height: 40,
                  width: 120,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: Color(0xff0000FF),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Color(0xffFFFFFF),
                          foregroundColor: Colors.black
                      ),
                      onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.call,color: Colors.blue,),
                      SizedBox(width: 5,),
                      Text('Call',style: TextStyle(color: Colors.blue),),
                    ],
                  )),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/ev 1.jpg'),fit: BoxFit.cover
                      )
                  ),
                ),
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/ev2.jpg'),fit: BoxFit.cover
                      )
                  ),
                ),
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/ev3.jpg'),fit: BoxFit.cover
                      )
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: StationTabBar(),

            )
          ],
        ),
      ),
    );
  }
}
