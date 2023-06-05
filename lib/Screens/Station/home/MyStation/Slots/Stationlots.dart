import 'package:flutter/material.dart';

//import '../../../styles/textstyle.dart';
import '../../../../styles/textstyle.dart';
import 'SlotsDropDowns.dart';
class StationSlotPage extends StatelessWidget {
  const StationSlotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  SizedBox(width: 140,),
                  Text('Slots',style: booking,textAlign: TextAlign.center,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        )
                      )
                    ),
                    child: ListTile(
                      leading: Icon(Icons.ev_station_outlined),
                      trailing: Text('0/1'),
                      title: Row(

                        children: [
                          Text('CHAdeMo '),
                          Text(': 110 kW '),
                        ],
                      ),
                      subtitle: Row(
                        children: [
                          Text('Unit Price',style: TextStyle(color: Colors.red),),
                          Text(': 110/hour'),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(left:250),
              child: Container(
                height: 50,
                width: 130,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff5A5AD2),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DropDownButtonPage()));
                    }, child: Row(
                  children: [
                    Icon(Icons.add),
                    Text('  Add Slot'),
                  ],
                )),
              ),
            )

          ],
        ),
      ),
    );
  }
}
