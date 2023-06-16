import 'package:flutter/material.dart';

import '../../styles/textstyle.dart';
class ComplaintPage extends StatelessWidget {
  const ComplaintPage({Key? key}) : super(key: key);

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
            Text('Today',textAlign:TextAlign.start,style: TextStyle(color: Color(0xff0000ff),fontSize: 20),),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 7,
                  itemBuilder: (context,index){
                return Card(
                  elevation: 10,
                  color: Colors.black,
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.white,

                  ),
                );
              }),
            )


          ],
        ),
      ),
    );
  }
}
