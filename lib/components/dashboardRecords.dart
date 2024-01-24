import 'package:flutter/material.dart';
//import 'package:flutter_application_1/main.dart';

Widget DashboardRecords()
{
  return Column(
    children: [Expanded(child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
           
            title: Text('Medical Records', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
             //backgroundColor : Color(Colors.grey),
          ),
          
          ListTile(
            title: Text('record 1') ,
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('record 2') ,
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('record 3') ,
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('record 4') ,
            onTap: () {
              
            },
          ),
          
        ],
      ), )],
  );
}