import 'package:flutter/material.dart';

import '../../styles/textstyle.dart';
class complaintPage extends StatelessWidget {
  const complaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                Text('Complaints',style: booking,textAlign: TextAlign.center,),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Text('  Station Name',style: black,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.arrow_drop_down),
                border: OutlineInputBorder(

                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('Complaint Type',style: TextStyle(
              fontSize: 18,fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 175,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width: 1,
                        color:  Color(0xff5A5AD2),
                      ),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xff5A5AD2),),
                      onPressed: (){}, child: Text('Charger Faculty')),
                ),
                Container(
                  height: 30,
                  width: 175,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          width: 1,
                          color:  Color(0xff5A5AD2),
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Color(0xff5A5AD2),),
                      onPressed: (){}, child: Text('Slow Charging')),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 175,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width: 1,
                        color:  Color(0xff5A5AD2),
                      ),
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xff5A5AD2),),
                      onPressed: (){}, child: Text('Network Issue')),
                ),
                Container(
                  height: 30,
                  width: 175,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          width: 1,
                          color:  Color(0xff5A5AD2),
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Color(0xff5A5AD2),),
                      onPressed: (){}, child: Text('Voltage Fliuctuation')),
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.arrow_drop_down),
              border: OutlineInputBorder(

              )
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              // expands: true,

              decoration: InputDecoration(

                  hintText: 'Write short description \nEnter your concern here...',
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 90,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                height:50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff5A5AD2),
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){}, child: Text('Raise a Complaint'))),
          )

        ],
      ),
    );
  }
}
