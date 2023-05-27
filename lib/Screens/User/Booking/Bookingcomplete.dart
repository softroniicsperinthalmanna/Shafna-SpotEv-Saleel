import 'package:flutter/material.dart';
class bookingComplete extends StatelessWidget {
  const bookingComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 360,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Colors.black
                              ),

                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text('02 May 2021'),
                              GestureDetector(
                                onTap: (){
                                  showDialog(context: context, builder:(context){

                                    //Dialog
                                    return AlertDialog(
                                      elevation: 50,
                                      title: Text('Are you sure You want to cancel Your Booking?'),
                                      actions: [
                                        TextButton(onPressed: (){
                                          showDialog(context: context, builder: (context){
                                            return AlertDialog(
                                              elevation: 100,
                                              title: Text('You Have Cancelled Your Booking.'),
                                              actions: [
                                                TextButton(onPressed: (){}, child: Text('Ok'))
                                              ],
                                            );
                                          });
                                        }, child: Text('Yes')),
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: Text('No'))

                                      ],

                                    );
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color: Colors.red
                                      )
                                  ),
                                  child: Center(child: Text('Cancel',style: TextStyle(color: Colors.red),)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.location_on_outlined,color: Colors.black,size: 30,),
                                Text(' YX Vestby Charging Station \n TML Plant, Malappuram \n charger A | Charging Point 1'
                                ),
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color: Colors.greenAccent
                                      )
                                  ),
                                  child: Center(
                                    child: Text('Completed',style: TextStyle(
                                        color: Colors.greenAccent
                                    ),),
                                  ),
                                )],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 134),
                            child: Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: Colors.blueAccent
                                  )
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.navigation,color: Colors.blueAccent,),
                                  Text('Navigate',style: TextStyle(color: Colors.blueAccent),)
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.brightness_auto_outlined, color: Colors.black,size: 30,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 34),
                                  child: Text('DC Type 1',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),),
                                ),


                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(

                                color: Colors.transparent,
                                border: Border.all(
                                    color: Colors.blueAccent
                                )
                            ),
                            child: Center(child: Text('45 min')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Column(

                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('1:15 PM'),
                                    Text('12 May 2023')
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('1:15 PM'),
                                    Text('12 May 2023')
                                  ],
                                )
                              ],),
                          ),
                          SizedBox(height: 16,),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.black45
                                    )
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Session Charge',style: TextStyle(
                                      fontSize: 18
                                  ),),
                                  Text('Rs.250',style: TextStyle(
                                      fontSize: 18
                                  ),)
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),

            ],
          );
        },
      ),
    );
  }
}
