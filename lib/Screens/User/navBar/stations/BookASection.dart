import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/User/navBar/stations/paymentProcess.dart';

import '../../../styles/textstyle.dart';
class BookASection extends StatelessWidget {
  const BookASection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child:
      Scaffold(

      body: SingleChildScrollView(
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
                  Text('Book a section',style: booking,textAlign: TextAlign.center,),
                ],
              ),
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('1 PM'),
                Container(
                  height: 70,
                  width: 80,
                  color: Colors.transparent,
                ),
                GestureDetector(
                  onTap: (){
                    showModalBottomSheet(context: context, builder: (conetxt){
                      return Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text('selected section',style: black,),
                            SizedBox(height: 50,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.deepPurple,
                                ),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(' 1:15 PM\n 12 May 2023'),
                                Container(
                                  height: 30,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xff0000FF),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(child: Text('45 min')),
                                ),
                                Text('1:15 PM\n12 May 2023'),

                              ],
                            ),
                            SizedBox(height: 30,),
                            Center(
                              child: Container(
                                  height: 50,
                                  width: 200,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff5A5AD2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                      ),
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentProcess()));
                                      }, child: Text('Proceed'))),
                            )
                          ],
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.green
                    ),
                    child: Center(child: Text('1:15 PM-\n1:30 PM')),
                  ),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.green
                  ),
                  child: Center(child: Text('1:30 PM-\n1:45 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.green
                  ),
                  child: Center(child: Text('1:45 PM-\n2:00 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('2 PM'),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),

                  ),
                  child: Center(child: Text('2:00 PM-\n2:15 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: Center(child: Text('2:15 PM-\n2:15 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: Center(child: Text('2:30 PM-\n2:45 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: Center(child: Text('2:45 PM-\n3:00 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('3 PM'),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),

                  ),
                  child: Center(child: Text('3:00 PM-\n3:15 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),

                  ),
                  child: Center(child: Text('3:15 PM-\n3:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.green
                  ),
                  child: Center(child: Text('3:30 PM-\n3:45 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.green
                  ),
                  child: Center(child: Text('3:34 PM-\n4:00 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('4 PM'),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.grey
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('5 PM'),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),

                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('6 PM'),
                Container(
                  height: 70,
                  width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                    ),
                    child: Center(child: Text('1:15 PM-\n1:30 PM'))                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('7 PM'),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),

                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('8 PM'),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('9 PM'),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('10 PM'),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('11 PM'),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('12 PM'),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),

          ],
        ),
      )
    ));
  }
}
