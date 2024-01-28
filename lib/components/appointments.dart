import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/approved.dart';
import 'package:flutter_application_1/components/navbar.dart';
import 'package:flutter_application_1/components/requested.dart';
//import 'package:flutter_application_1/main.dart';

class Appointments extends StatelessWidget{
  const Appointments({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Appointments'),
          actions: 
          <Widget>[
                IconButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentRequested()));
                  
                }, icon: Icon(Icons.person_add),
                iconSize: 35.0),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentApproved()));

                }, icon: Icon(Icons.fact_check_sharp),
                iconSize: 35.0),

               // SizedBox(width: 16.0),

                IconButton(onPressed: (){

                }, icon: Icon(Icons.notifications),
                iconSize: 35.0)

              ],
              ),
              
        body: 
        
        Padding(
          padding: const EdgeInsets.all(16),
          
          child: ListView(
          padding: EdgeInsets.zero,
          children: [
          //   ListTile(
          //  tileColor: Colors.grey[350],
          //   title: Text('Appointments',
          //    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //    textAlign: TextAlign.center,
          //    ),
             
          //    //backgroundColor : Color(Colors.grey),
          // ),
            ListTile(
              title: Text('Patient 1') ,
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text('Patient 2') ,
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text('Patient 3') ,
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text('Patient 4') ,
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text('Patient 5') ,
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text('Patient 6') ,
              onTap: () {
                
              },
            ),
            ElevatedButton(
              
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentRequested()));
            }, 
            child: Text('Request'),)
            
          ],
                ),
                
        ),
        
      
    ),
    );
    
  }
  
}