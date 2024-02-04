import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/providers.dart';
import 'package:get/get.dart';


Widget RetriveData()
{
 // List patientData = fetchPatientData('821') as List;
 // dynamic patient_id = patientData['id'];
  // dynamic name = patientData['name'][0]['given']+patientData['name'][0]['family'];
  // dynamic gender = patientData['gender'];
  // dynamic dob = patientData['birthDate'];
  // return Container(
  //   child: Padding(
  //     padding: const EdgeInsets.all(10.0),
  //     child: Column(
  //       children: [
  //          ListTile(
  //             title: Text(patientData[0]) ,
  //           ),
  //           ListTile(
  //             title: Text(patientData[3]) ,
  //           ),
  //           ListTile(
  //             title: Text(patientData[1]) ,
  //             ),
  //           ListTile(
  //             title: Text(patientData[2]) ,
  //            ),
  //       ],
  //     ),
  //   ),
  // );
  return FutureBuilder<List>(
        future: fetchPatientData('821'),
        builder: (context, snap) {
          if ((snap.data == null)) {
            print('***********0');
            print(snap.data!);
            return const Center(child: CircularProgressIndicator());
          } else {
            print(snap.data!);
            return 
              ListView.builder(
                  itemCount: snap.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
              title: Text(snap.data![index]) ,
            );
                  });
            
          }
        });
}