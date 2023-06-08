import 'package:flutter/material.dart';

import '../../../styles/textstyle.dart';
import 'StationChargingHistoryDetails.dart';
import 'StationPayemntHistory.dart';
class StationChargingHistory extends StatelessWidget {
  const StationChargingHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Center(child: Text('Charging History')),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   height: 150,
            //   width: MediaQuery.of(context).size.width,
            //   decoration: BoxDecoration(
            //       color: Color(0xff5A5AD2),
            //       borderRadius: BorderRadius.only(
            //           bottomLeft: Radius.circular(30),
            //           bottomRight: Radius.circular(30)
            //       )
            //   ),
            //   child: Row(
            //     children: [
            //       IconButton(onPressed: () {
            //         Navigator.pop(context);
            //       }, icon:Icon( Icons.arrow_back,color: Colors.white,) ),
            //       SizedBox(width: 60,),
            //       Text('Charging History',style: booking,textAlign: TextAlign.center,),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('   Sort by'),
            ),
            Row(
              children: [
                SizedBox(width: 15,),

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
                SizedBox(width: 15,),
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
                SizedBox(width: 15,),

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
              ],
            ),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: Stationcharging.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 10,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>StationPayemntHistory(
                            price:Stationcharging[index]['rate'],
                          ),));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 110,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff5A5AD2),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,top: 3),
                            child: Column(
                              children: [

                                Row(
                                  children: [
                                    Text(' ${Stationcharging[index]['date']}'),
                                    SizedBox(width: 20,),
                                    Text('${Stationcharging[index]['time']}'),
                                  ],
                                ),
                                // SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Icon(Icons.person_2_outlined),
                                    SizedBox(width: 10,),
                                    Text('${Stationcharging[index]['name']}'),
                                    Expanded(
                                      child: ListTile(
                                        trailing: Text('Rs.${Stationcharging[index]['rate']}'),
                                      ),
                                    ),


                                  ],
                                )  ,
                                Row(
                                  children: [
                                    Icon(Icons.radio_button_checked_sharp),
                                    SizedBox(width: 10,),
                                    Text('${Stationcharging[index]['type']}'),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
