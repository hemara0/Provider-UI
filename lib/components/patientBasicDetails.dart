import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget PatientBasicStatic()
{
  // return Column(
  //   children: [Expanded(child: ListView(
  //       padding: EdgeInsets.zero,
  //       children: [
    
  //         ListTile(
  //           title: Text('Patient id: ') ,
  //         ),
  //         ListTile(
  //           title: Text('Name: ') ,
  //         ),
  //         ListTile(
  //           title: Text('Gender: ') ,
  //           ),
  //         ListTile(
  //           title: Text('DOB: ') ,
  //          ),
          
  //       ],
  //     ), )],
  // );
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
           ListTile(
              title: Text('Patient id: ') ,
            ),
            ListTile(
              title: Text('Name: ') ,
            ),
            ListTile(
              title: Text('Gender: ') ,
              ),
            ListTile(
              title: Text('DOB: ') ,
             ),
        ],
      ),
    ),
  );
}