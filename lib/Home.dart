import 'dart:math';

import 'package:bill/Model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  TextEditingController txtname = TextEditingController();
  TextEditingController txtno = TextEditingController();
  TextEditingController txtadd = TextEditingController();
  TextEditingController txtitemname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtqunty = TextEditingController();
  TextEditingController txts_add = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: Colors.black,
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
            title: Text("Create Invoice"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                     details();
                  },
                  child: Container(
                   margin: EdgeInsets.only(top: 30),
                       height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                       borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.home_filled,size: 30,),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Your details",style: TextStyle(fontSize: 18),)),
                        Icon(Icons.navigate_next_outlined,size: 35,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                     item();
                  },
                  child: Container(
                    alignment: Alignment.center,
                   margin: EdgeInsets.only(top: 25),
                       height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                       borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.select_all,size: 30,),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Select Item",style: TextStyle(fontSize: 18),)),
                        Icon(Icons.navigate_next_outlined,size: 35,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  Modal m1 = Modal(
                    name: txtname.text,no: txtno.text,address: txtadd.text,i_name: txtitemname.text,
                    price: txtprice.text,qua: txtqunty.text,s_add: txts_add.text
                  );
                  Navigator.pushNamed(context, 'view',arguments: m1);
                },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      shadowColor: Colors.greenAccent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(150, 60),
                    ),
                    child: Text("Next",style: TextStyle(fontSize: 30),)),
              ],
            ),
          ),
        ),
    );
  }
  void details()
  {
     showDialog(context: context,
         builder: (context){
         return AlertDialog(
           backgroundColor: Colors.green,
           content: Container(
             height: 300,
             width: 200,
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   TextField(
                     controller: txtname,
                     decoration: InputDecoration(
                       focusedBorder:OutlineInputBorder(
                         borderSide: const BorderSide(color: Colors.white, width: 2.0),
                         borderRadius: BorderRadius.circular(25.0),
                       ),
                       hintText: 'Your Name',
                       filled: true,
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                     ),
                   ),
                   SizedBox(height: 20,),
                   TextField(
                     controller: txtno,
                     keyboardType: TextInputType.number,
                     inputFormatters: [
                         FilteringTextInputFormatter.digitsOnly,
                     ],
                     decoration: InputDecoration(
                       focusedBorder:OutlineInputBorder(
                         borderSide: const BorderSide(color: Colors.white, width: 2.0),
                         borderRadius: BorderRadius.circular(25.0),
                       ),
                       hintText: 'Contact Number',
                       filled: true,
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                     ),
                   ),
                   SizedBox(height: 20,),
                   TextField(
                     controller: txtadd,
                     maxLines: 3,
                     decoration: InputDecoration(
                       focusedBorder:OutlineInputBorder(
                         borderSide: const BorderSide(color: Colors.white, width: 2.0),
                         borderRadius: BorderRadius.circular(25.0),
                       ),
                       hintText: 'Address',
                       filled: true,
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                     ),
                   ),
                   SizedBox(height: 20,),
                   ElevatedButton(
                        onPressed: (){

                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          minimumSize: Size(130, 70),
                        ),
                        child: Text("Save"))
                 ],
               ),
             ),
           ),
         );
         });
  }
  void item()
  {
    {
      showDialog(context: context,
          builder: (context){
            return AlertDialog(
              backgroundColor: Colors.green,
              content: Container(
                height: 300,
                width: 200,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: txtitemname,
                        decoration: InputDecoration(
                          focusedBorder:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: 'Item Name',
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        controller: txtprice,
                        decoration: InputDecoration(
                          focusedBorder:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: 'Price',
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        controller: txtqunty,
                        decoration: InputDecoration(
                          focusedBorder:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: 'Quantity',
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        controller: txts_add,
                        maxLines: 3,
                        decoration: InputDecoration(
                          focusedBorder:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: 'Shipping Address',
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                          onPressed: (){

                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            onPrimary: Colors.white,
                            shadowColor: Colors.greenAccent,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            minimumSize: Size(130, 70),
                          ),
                          child: Text("Save"))
                    ],
                  ),
                ),
              ),
            );
          });
    }
  }
}















