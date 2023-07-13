import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/User/navBar/stations/paymentProcess.dart';

import '../../../styles/textstyle.dart';
class BookASection extends StatefulWidget {
   BookASection({Key? key}) : super(key: key);

  @override
  State<BookASection> createState() => _BookASectionState();
}

class _BookASectionState extends State<BookASection> {
  var flag=0;
  var selection;
  var selectedTime=false;
var Time=[
  '01:00-01:15',
  '01:15-01:30',
  '01:30-01:45',
  '01:45-02:00',
  '02:00-02:15',
  '02:15-02:30',
  '02:30-02:45',
  '02:45-03:00',
  '03:00-03:15',
  '03:15-03:30',
  '03:30-03:45',
  '03:45-04:00',
  '04:00-04:15',
  '04:15-04:30',
  '04:30-04:45',
  '04:45-05:00',
  '05:00-05:15',
  '05:15-05:30',
  '05:30-05:45',
  '05:45-06:00',
  '06:00-06:15',
  '06:15-06:30',
  '06:30-06:45',
  '06:45-07:00',
  '07:00-07:15',
  '07:15-07:30',
  '07:30-07:45',
  '07:45-08:00',
  '08:00-08:15',
  '08:15-08:30',
  '08:30-08:45',
  '08:45-09:00',
  '09:00-09:15',
  '09:15-09:30',
  '09:30-09:45',
  '09:45-10:00',
  '10:00-10:15',
  '10:15-10:30',
  '10:30-10:45',
  '10:45-11:00',
  '11:00-11:15',
  '11:15-11:30',
  '11:30-11:45',
  '11:45-12:00',
];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child:
      Scaffold(
          appBar: AppBar(
            // leading: Icon(Icons.arrow_back),
            title: Center(child: Text('Book a section')),
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
        scrollDirection: Axis.vertical,
        child: Column(
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
            //       SizedBox(width: 100,),
            //       Text('Book a section',style: booking,textAlign: TextAlign.center,),
            //     ],
            //   ),
            // ),
            SizedBox(height: 10,),
            TabBar(
                labelColor: Colors.black,
                tabs: [
              Tab(
                text: '12 May 2023',
              ),
              Tab(
                text: '13 May 2023',
              ),
              Tab(
                text: '14 May 2023',
              ),
            ]),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black
                          ),
                          color: Colors.grey
                      ),
                    ),
                    Text(' Occupaid'),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black
                        ),

                      ),
                    ),
                    Text(' Available'),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black
                          ),
                          color: Colors.green
                      ),
                    ),
                    Text(' Selected'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
                  itemCount:Time.length,
                  itemBuilder: (context, index){
                  return  Padding(
                    padding: const EdgeInsets.all(4),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: selection==index?Colors.green:Colors.white,
                          foregroundColor:Colors.black,
                      side: BorderSide(
                        color: Colors.black,
                      )),
                      onPressed: () {
                        setState(() {
                          selection = index ;
                        //   selection.isSelected = !selection.isSelected;
                           });
                      }, child: Text('${Time[index]}',style: TextStyle(fontSize: 9),),),
                    // child: Container(
                    //               height: 70,
                    //               width: 90,
                    //               decoration: BoxDecoration(
                    //                 border: Border.all(
                    //                   color: Colors.black,
                    //                 ),
                    //                 color: Colors.transparent
                    //               ),
                    //               child: Center(child: Text('${Time[index]}')),
                    //             ),
                  );

              }),
            ),


          ],
        ),
      )
    ));
  }
}
