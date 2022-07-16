import 'package:bill/Home.dart';
import 'package:bill/View.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> splesh(),
        'home':(context)=> home(),
        'view':(context)=> view(),
      },
    ),
  );
}


class splesh extends StatefulWidget {
  const splesh({Key? key}) : super(key: key);

  @override
  State<splesh> createState() => _spleshState();
}

class _spleshState extends State<splesh> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoSize: 00,
     logo: Image.asset('assets/images/n1.webp'),
      backgroundImage: AssetImage('assets/images/n2.jpg'),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loaderColor: Colors.red,
      loadingText: Text("Loading...",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      navigator: home(),
      durationInSeconds: 5,
    );
  }
}
