import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/appointments.dart';
import 'package:flutter_application_1/components/temp.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/homepage.dart';

class NavBar extends StatelessWidget{
  const NavBar({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
        
        child: 
        ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
           
            title: Text('Explore', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
             //backgroundColor : Color(Colors.grey),
          ),
          
          ListTile(
            title: Text('Patient Dashboard') ,
            onTap: () {
              //TempApp();
            },
          ),
          ListTile(
            title: Text('Appointments') ,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Appointments()));
            },
          ),
          ListTile(
            title: Text('Online Consultations') ,
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('Settings') ,
            onTap: () {
              
            },
          ),
          
        ],
      ),
      
    );
  }

}