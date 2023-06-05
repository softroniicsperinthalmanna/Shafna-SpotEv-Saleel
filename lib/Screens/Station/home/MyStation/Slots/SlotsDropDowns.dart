import 'package:flutter/material.dart';

import '../../../../styles/textstyle.dart';
//mport '../../../styles/textstyle.dart';
class DropDownButtonPage extends StatefulWidget {
   DropDownButtonPage({Key? key}) : super(key: key);

  @override
  State<DropDownButtonPage> createState() => _DropDownButtonPageState();
}

class _DropDownButtonPageState extends State<DropDownButtonPage> {
var voltage=[
  '110 KW',
  '22 KW',
  '50 KW',
];
var charger=[
  'CHAdeMo',
  'CCS',
  'TYPE-2',
  'GB/T',
  'CCS2',
];
var price=[
  'Rs 100/hour',
  'Rs 200/hour',
  'Rs 110/hour',
  'Rs 150/hour',
  'Rs 50/hour',
];
var selected_item1;
var selected_item2;
var selected_item3;
bool switchselect=true;

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
                Text('Add Slots',style: booking,textAlign: TextAlign.center,),
              ],
            ),
          ),
          SizedBox(height: 120,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff0000ff),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                
                child: DropdownButton(
                  style: TextStyle(fontSize: 16,color: Colors.black),
                  underline: Container(),
                  isExpanded: true,
                  hint: Text(' Voltage'),
                  value: selected_item1,
                    items: voltage.map((e) => DropdownMenuItem(child: Text('$e'),
                    value: e,
                    )).toList(),
                    onChanged: (val){
                      setState(() {
                        selected_item1=val;
                      });
                    }),
              ),
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff0000ff),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton(
                    style: TextStyle(fontSize: 16,color: Colors.black),
                    underline: Container(),
                  isExpanded: true,
                  hint: Text(' Charger type'),
                  value: selected_item2,
                    items: charger.map((e) => DropdownMenuItem(child: Text(e),
                    value:e,
                    )).toList(),
                    onChanged: (val){
                    setState(() {
                      selected_item2=val;
                    });
                    }),
              ),

            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 34),
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff0000ff),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                hint: Text(' Price'),
                underline: Container(),
                isExpanded: true,
                style: TextStyle(fontSize: 16,color: Colors.black),
                value: selected_item3,
                  items: price.map((e) => DropdownMenuItem(child: Text(e),
                  value:e,
                  )).toList(),
                  onChanged: (val){
                  setState(() {
                    selected_item3=val;
                  });
                  }),
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Disable slot'),
              SizedBox(width: 20,),
              Switch(value: switchselect,
                  onChanged: (bool? value){
                setState(() {
                  switchselect=!switchselect;
                });
                  })
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5A5AD2),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  onPressed: (){}, child: Text('Submit',style: TextStyle(fontSize: 18),)),
            ),
          )
        ],
      ),
    );
  }
}
