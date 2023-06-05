import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/styles/textstyle.dart';
class SelectVehicles extends StatelessWidget {
  const SelectVehicles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: Center(
          child: Text('Select vehicles',style: TextStyle(color: Colors.black),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text('Choose your Brand',style: black,),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 10,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color(0xff5A5AD2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text('ALL',style: TextStyle(color: Colors.white,fontSize: 18),)),
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/carlogo1.png'),fit: BoxFit.contain
                            )
                          ),
                        ),
                        Text('Tata',style: TextStyle(color: Colors.black,fontSize: 18),),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/carlogo2.png'),fit: BoxFit.contain
                              )
                          ),
                        ),
                        Text('Hyundai',style: TextStyle(color: Colors.black,fontSize: 16),),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left:50),
              child: Text('All',style: black,),
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Card(
                          elevation: 10,
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 120,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white,
                              ),
                              color: Color(0xff5A5AD2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text('Tata Nexon EV',style: profile,),
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 150),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,

                                    children: [
                                      Icon(Icons.radio_button_on_outlined,color: Colors.white,),
                                      Text('  Type-2',style: profile,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 150,top: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.radio_button_on_outlined,color: Colors.white,),
                                      Text('  CCS-2',style: profile,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/car1.png'),fit: BoxFit.contain
                          )
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Card(
                          elevation: 10,
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 120,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                              ),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text('Hyundai Kona',style:TextStyle(color: Colors.black,fontSize: 18),),
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 150),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,

                                    children: [
                                      Icon(Icons.radio_button_on_outlined,color: Color(0xff0000FF),),
                                      Text('  CHAdeMO',style: TextStyle(color: Colors.black,fontSize: 18),),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 150,top: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.radio_button_on_outlined,color: Color(0xff0000FF),),
                                      Text('  Type-2',style: TextStyle(color: Colors.black,fontSize: 18),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/car2.png'),fit: BoxFit.contain
                            )
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25,),
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Card(
                          elevation: 10,
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 120,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                              ),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text('ola',style:TextStyle(color: Colors.black,fontSize: 18),),
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 150),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,

                                    children: [
                                      Icon(Icons.radio_button_on_outlined,color: Color(0xff0000FF),),
                                      Text('  CSS-2',style: TextStyle(color: Colors.black,fontSize: 18),),
                                      SizedBox(width: 10,),
                                      Icon(Icons.radio_button_on_outlined,color: Color(0xff0000FF),),
                                      Text('  Type-2',style: TextStyle(color: Colors.black,fontSize: 18),),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 150,top: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.radio_button_on_outlined,color:Color(0xff0000FF),),
                                      Text('  CHAdeMo',style: TextStyle(color: Colors.black,fontSize: 18),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/scooty.png'),fit: BoxFit.contain
                            )
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
