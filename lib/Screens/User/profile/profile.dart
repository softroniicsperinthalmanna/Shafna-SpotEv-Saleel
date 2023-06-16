import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:spot_ev/Screens/UserORStationPage.dart';
import 'package:spot_ev/Screens/connect.dart';

import '../../../login.dart';
import '../../styles/textstyle.dart';
import '../Booking/Bookingtabbar.dart';
import '../Trips/tripPage.dart';
import '../faviourites/favouritePage.dart';
import '../history/chargingHistory.dart';
import '../manageEv/manageVehicle.dart';
import '../wallet/walletPage.dart';
import 'editprofile.dart';


class ProfilePage extends StatefulWidget {
   ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
Future<void> RecieveData() async {
  var response=await get(Uri.parse('${con.url}/UserProfileRead.php'));
  jsonDecode(response.body);
  // if(jsonEncode(response.body)['result']=='Success'){
  //
  // }

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Column(
                        children: [

                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(42),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xff0A1E93),Colors.lightBlueAccent]
                              )
                            ),
                            child: Icon(Icons.person_add_alt,size: 40,color: Colors.white,),
                          ),
                          Text('Saleel mhd',style: profile,)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text('apple@gmail.com',style: profile,),
                          Text('9876006589',style: profile,),
                          TextButton(onPressed: (){}, child: Row(
                            children: [
                              Icon(Icons.edit,color: Colors.green,),
                              SizedBox(height: 45,),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfilePage(),));
                                },
                                child: Text(' Edit Profile',style: TextStyle(
                                  color: Colors.green
                                ),),
                              )
                            ],
                          ))
                        ],
                      ),
                    //Pop up menu
                      Icon(CupertinoIcons.line_horizontal_3,color: Colors.white,)

                    ],
                  ),
                ),

              ),
              SizedBox(height: 20,),
             Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Column(
                      children: [
                        Card(
                          elevation: 10,

                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageVehicle(),));
                            },
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 30,),
                                  Icon(CupertinoIcons.car),
                                  SizedBox(width: 40,),
                                  Text('ManageEV')
                                ],

                        ),
                  ),
                          ),
                ),
                        Card(
                          elevation: 10,

                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingTabbar(),));
                            },
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 30,),
                                  Icon(CupertinoIcons.bookmark),
                                  SizedBox(width: 40,),
                                  Text('My Bookings')
                                ],

                        ),
                  ),
                          ),
                ),
                        Card(
                          elevation: 10,

                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChargingHistory()));
                            },
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 30,),
                                  Icon(CupertinoIcons.lock),
                                  SizedBox(width: 40,),
                                  Text('History')
                                ],

                        ),
                  ),
                          ),
                ),
                        Card(
                          elevation: 10,

                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>WalletPage()));
                            },
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 30,),
                                  Icon(Icons.wallet_outlined),
                                  SizedBox(width: 40,),
                                  Text('Wallet')
                                ],

                        ),
                  ),
                          ),
                ),Card(
                          elevation: 10,

                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TripPlannerPage(),));
                            },
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 30,),
                                  Icon(CupertinoIcons.map_pin_ellipse),
                                  SizedBox(width: 40,),
                                  Text('Trips')
                                ],

                        ),
                  ),
                          ),
                ),
                        Card(
                          elevation: 10,

                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>favouritePage(),));
                            },
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 30,),
                                  Icon(CupertinoIcons.heart),
                                  SizedBox(width: 40,),
                                  Text('Favorites')
                                ],

                        ),
                  ),
                          ),
                ),
                        Card(
                          elevation: 10,

                          child: GestureDetector(
                            onTap: (){
                              showDialog(context: context, builder : (context){
                                return AlertDialog(
                                  elevation: 100,
                                  title: Text('Are you sure you want to logout ?'),
                                  actions: [
                                    TextButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>USerORStationPage()));
                                    }, child: Text('yes')),
                                    TextButton(onPressed: (){}, child: Text('No'))
                                  ],
                                );
                              }
                              );
                            },
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 30,),
                                  Icon(Icons.logout),
                                  SizedBox(width: 40,),
                                  Text('Logout')
                                ],

                        ),
                  ),
                          ),
                ),
                      ],
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
