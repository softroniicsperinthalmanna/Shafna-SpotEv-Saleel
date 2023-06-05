import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../styles/textstyle.dart';
import 'StationDetailsPage.dart';
class StationListAndAddPAge extends StatelessWidget {
  StationListAndAddPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
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
              child: Row(
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon:Icon( Icons.arrow_back,color: Colors.white,) ),
                  SizedBox(width: 100,),
                  Text('Station ',style: booking,textAlign: TextAlign.center,),
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left :8.0,right: 70,top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search station',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            )
                        )
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15,top: 15),
                  child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.black,
                        child: GestureDetector(
                          onTap: (){
                            showModalBottomSheet(
                                context: context, builder: (context){
                              return Container(
                              height: 200,
                               width: double.infinity,
                                color: Colors.red,
                              );
                            });
                          },
                          child: CircleAvatar(
                              radius: 22.5,
                              backgroundColor: Colors.white,
                              child: Icon(CupertinoIcons.slider_horizontal_3,color: Colors.black,)),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>StationDetailsAndTabBar()));
                          },
                          child: Container(
                            height: 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('YX Vestby'),
                                          SizedBox(width: 19,),
                                          Text('45km'),
                                          Expanded(
                                            child: ListTile(
                                              trailing:  Icon(Icons.turn_right_rounded),
                                            ),
                                          )

                                         
                                        ],
                                      ),
                                      Text('Palakkad'),
                                      SizedBox(height: 3,),
                                      Row(
                                        children: [
                                          Text('4.0'),
                                          Icon(Icons.star,color: Colors.amber,size: 20,),
                                          Icon(Icons.star,color: Colors.amber,size: 20,),
                                          Icon(Icons.star,color: Colors.amber,size: 20,),
                                          Icon(Icons.star,color: Colors.amber,size: 20,),
                                          Icon(Icons.star,size: 20,),
                                          Text('(20)')
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Container(height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Icon(Icons.charging_station,size: 17,),
                                          SizedBox(height: 1,),
                                          Icon(Icons.charging_station,size: 17,),
                                          SizedBox(height: 1,),
                                          Icon(Icons.charging_station,size: 17,),
                                        ],
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('CSS'),
                                          Text('Type-2'),
                                          Text('CHAdeMo')
                                        ],
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(':  110 KW'),
                                          Text(':  22 KW'),
                                          Text(':  50 KW'),
                                        ],
                                      ),
                                      SizedBox(width: 30,),
                                      Column(
                                        children: [
                                          Text('2/4'),
                                          Text('2/2'),
                                          Text('0/1')
                                        ],
                                      ),
                                    ],
                                  ),)
                              ],
                            ),

                          ),
                        ),
                      ),
                    );
                  }),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 220),
            //   child: Container(
            //     height: 50,
            //     width: 175,
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(20),
            //           ),
            //           backgroundColor: Color(0xff5A5AD2),
            //           foregroundColor: Colors.white,
            //         ),
            //         onPressed: (){}, child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Icon(Icons.add),
            //         Text(' Add Station')
            //       ],
            //     )),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
