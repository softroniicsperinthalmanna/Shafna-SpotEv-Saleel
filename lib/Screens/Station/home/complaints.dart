import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spot_ev/Screens/connect.dart';

import '../../styles/textstyle.dart';
class ComplaintPage extends StatefulWidget {
   ComplaintPage({Key? key}) : super(key: key);

  @override
  State<ComplaintPage> createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  Future<String?> getLoginId() async {
    SharedPreferences pref =await SharedPreferences.getInstance();
    String? LoginID=pref.getString('LoginID');
    return LoginID;
  }

  var uid;

  var flag = 0;

  Future<void> refresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  Future<dynamic> RecieveData() async {
    uid=await getLoginId();
    print('uid: $uid');
    var data = {'station_id': uid};
    var response =
    await post(Uri.parse('${con.url}/complaintViewPage.php'), body: data);
    if(uid!=null)
      print('uid: $uid');
    else{
      print('uid value not found');
    }
    //print(response.body);
    print(response.body);
    if (jsonDecode(response.body)[0]['result'] == 'Success') {
      flag = 1;
      print(response.body);
    } else {
      flag = 0;
      print(response.body);
    }
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Center(child: Text('Complaints')),
        toolbarHeight: 80,
        backgroundColor: Color(0xff5A5AD2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:20),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Complaints',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                Container(
                  height: 30,
                  width: 90,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[400],
                          foregroundColor: Color(0xff0000FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      onPressed: (){}, child: Text('Bydate')),
                ),

                Container(
                  height: 30,
                  width: 90,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color(0xff000000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: BorderSide(
                              color: Colors.black
                          )
                      ),
                      onPressed: (){}, child: Text('Newest')),
                ),

                Container(
                  height: 30,
                  width: 90,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color(0xff000000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: BorderSide(
                              color: Colors.black
                          )
                      ),
                      onPressed: (){}, child: Text('Oldest')),
                ),
                // IconButton(onPressed: (){
                //   showDatePicker(context: context, initialDate:DateTime.now(), firstDate: DateTime(2020), lastDate: DateTime(2100));
                // }, icon: Icon(Icons.calendar_month,color: Colors.red,size: 35,))
              ],
            ),
            SizedBox(height: 10,),
            Text('Today',textAlign:TextAlign.start,style: TextStyle(color: Color(0xff0000ff),fontSize: 20),),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height,
              child: FutureBuilder(
                future: RecieveData(),
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  print('flag inside future: $flag');
                  print(snapshot.data[0]['name']);
                  print(snapshot.data[0]['complain_type']);
                  print(snapshot.data[0]['description']);
                  print(snapshot.data[0]['date']);
                  if (snapshot.hasError) print(snapshot.error);
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: Text('waiting for connection....'));
                  }
                  if (!snapshot.hasData || snapshot.data.length == 0) {
                    return Center(
                      child: Text('No Data Found !!'),
                    );
                  }

                  return flag == 1?
                   ListView.builder(
                      itemCount: snapshot.data.length,
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                        return Card(
                          elevation: 10,
                          color: Colors.black,
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${snapshot.data[index]['date']}',style: normal,),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Name',style: normal,),
                                          Text('Complaint Type',style: normal,),
                                          SizedBox(height: 07,),
                                          Wrap(children:[ Text('Description',style: normal,)]),


                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('    :  ${snapshot.data[index]['name']}',style: normal,),
                                          Text('    :  ${snapshot.data[index]['complain_type']}',style: normal,),

                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Expanded(child: Container(
                                      height: 35,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xff0000ff),
                                        )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('${snapshot.data[index]['description']}',style: TextStyle(fontSize: 12),),
                                      )))
                                ],
                              ),
                            ),

                          ),
                        );
                      }):
                  Text('\n\n\nThere is no Complaints to show.....');
                },

              ),
            )


          ],
        ),
      ),
    );
  }
}
