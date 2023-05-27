import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/styles/textstyle.dart';

import 'chargingSessionSummary.dart';
class StationPayment extends StatefulWidget {
  StationPayment({Key? key}) : super(key: key);

  @override
  State<StationPayment> createState() => _StationPaymentState();
}

class _StationPaymentState extends State<StationPayment> {
bool is_checked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold (

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text('Payment',style: booking,textAlign: TextAlign.center,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text('Select your method',style:TextStyle(fontSize: 18),),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/gpay.jpg'),fit: BoxFit.cover
                    )
                  ),
                ),
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/paytm.jpg'),fit: BoxFit.cover
                    )
                  ),
                ),
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/phnpe.jpg'),fit: BoxFit.cover
                    )
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text('Enter your payment details',style: TextStyle(fontSize: 18),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'CARD HOLDER NAME',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    )
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'CARD NUMBER',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    )
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 185,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'EXP DATE',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.5,
                          )
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'CVV',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.5,
                          )
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('  Remember card detail\'s'),
                Checkbox(value: is_checked,
                    onChanged: (bool? value){
                    setState(() {
                      is_checked=!is_checked;
                    });
                    })

              ],
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor:  Color(0xff5A5AD2),
                        foregroundColor: Colors.white
                      ),
                      onPressed: (){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: Text('Your Booking is successfully completed'),
                            actions: [
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChargingSessionPage()));
                              }, child: Text('Ok',style: TextStyle(color: Colors.black),))
                            ],
                          );
                        });
                      }, child: Text('Book Now'))),
            )
          ],
        ),
      ),
    );
  }
}
