import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/approved.dart';
import 'package:flutter_application_1/components/dashboardRecords.dart';
import 'package:flutter_application_1/components/navbar.dart';
import 'package:flutter_application_1/components/requested.dart';
import 'package:flutter_application_1/pages/login.dart';

void main() async
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationExample(), debugShowCheckedModeBanner: false);
    
  }
}

class NavigationExample extends StatefulWidget {
  //const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Heal"),
      ),
  body:const Login(),);
}
}
 