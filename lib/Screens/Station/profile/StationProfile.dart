import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:spot_ev/Screens/Station/profile/stationLocationEditPage.dart';
import 'package:spot_ev/Screens/connect.dart';

import '../../styles/textstyle.dart';
import 'EditProfileDetailsPage.dart';
import 'changePasswordPage.dart';

class StationProfilePage extends StatefulWidget {
  StationProfilePage({Key? key}) : super(key: key);

  @override
  State<StationProfilePage> createState() => _StationProfilePageState();
}
var uid=18;
var flag=0;
Future<dynamic> RecieveData() async {
  print('uid: $uid');
  var data={
    'login_id':uid.toString()
  };
  var response=await post(Uri.parse('${con.url}/StationReadProfile.php'),body: data);
  print(response.body);
  if(jsonDecode(response.body)[0]['result']=='Success'){
    flag=1;
    print(response.body);

  }else{
    flag=0;
    print(response.body);

  }
  return jsonDecode(response.body);

}

class _StationProfilePageState extends State<StationProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xff438BCE),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff01376B),
                                  Color(0xff438BCE)
                                ])),
                        child: Icon(
                          Icons.add_a_photo_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Add/Change profile picture'),
                  )),
              SizedBox(height: 30,),

              FutureBuilder(
                future:RecieveData() ,
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  print('flag inside future: $flag');
                  print(snapshot.data[0]['name']);
                  print(snapshot.data[0]['email']);
                  print(snapshot.data[0]['mobile_no']);
                  if(snapshot.hasError)print(snapshot.error);
                  if(snapshot.connectionState==ConnectionState.waiting){
                    return Center(child: Text('waiting for connection....'));
                  }
                  if(!snapshot.hasData || snapshot.data.length==0){
                  return  Center(child: Text('No Data Found !!'),);
                  }

                  return   flag==1? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 150,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      color: Colors.black,
                                    )
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileDetailPage(
                                    name:snapshot.data[0]['name'],
                                    mob:snapshot.data[0]['mobile_no'],
                                    mail:snapshot.data[0]['email'],
                                    id:uid,
                                  )));
                                }, child: Text('Edit Details')),
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      color: Colors.black,
                                    )
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateNEwPasswordPage()));
                                }, child: Text('Change Password')),
                          ),

                        ],
                      ),
                      SizedBox(height: 20,),

                      SizedBox(
                        height: 20,
                      ),
                      Text
                        // ('VstyBy',
                        ('    ${snapshot.data[0]['name']}',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '    ${snapshot.data[0]['mobile_no']}',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '    ${snapshot.data[0]['email']}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ):

                  Center(child: CircularProgressIndicator(),)

                  ;
                },

              ),

              SizedBox(
                height: 60,
              ),


              // TextButton(
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => EditProfileDetailPage()));
              //   },
              //   child: Text(
              //     'Edit Details',
              //     style: TextStyle(color: Colors.black, fontSize: 22),
              //   ),
              // ),
              // Divider(
              //   color: Color(0xff0000ff),
              //   thickness: 1,
              // ),
              // TextButton(
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => CreateNEwPasswordPage()));
              //   },
              //   child: Text(
              //     'Password',
              //     style: TextStyle(color: Colors.black, fontSize: 22),
              //   ),
              // ),
              // Divider(
              //   color: Color(0xff0000ff),
              //   thickness: 1,
              // ),


            ],
          ),
        ),
      ),
    );
  }
}
