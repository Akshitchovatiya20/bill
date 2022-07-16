import 'package:bill/Model.dart';
import 'package:flutter/material.dart';

class view extends StatefulWidget {
  const view({Key? key}) : super(key: key);

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    Modal m2 = ModalRoute.of(context)!.settings.arguments as Modal;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 20,
          scrolledUnderElevation: 0,
          centerTitle: true,
          title: Text("Your Bill",style: TextStyle(color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.grey,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back,color: Colors.black,)),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text("Your Name :",style: TextStyle(fontSize: 20),)),
                        Text("${m2.name}",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Text("Mobile Num :",style: TextStyle(fontSize: 20))),
                        Text("${m2.no}",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Text("Address :",style: TextStyle(fontSize: 20))),
                        Text("${m2.address}",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(10),
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text("Item Name :",style: TextStyle(fontSize: 20),)),
                        Text("${m2.i_name}",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Text("Item Price :",style: TextStyle(fontSize: 20))),
                        Text("${m2.price}",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Text("Quantity :",style: TextStyle(fontSize: 20))),
                        Text("${m2.qua}",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Text("Address 2 :",style: TextStyle(fontSize: 20))),
                        Text("${m2.s_add}",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text("Item Price :",style: TextStyle(fontSize: 20),)),
                        Text("${m2.price}",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Text("Mobile Num :",style: TextStyle(fontSize: 20))),
                        Text("${m2.no}",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Text("Address :",style: TextStyle(fontSize: 20))),
                        Text("${m2.address}",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

























