import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildAppointmentLists(List userOrders){

  List fieldIcons = [
      Icons.local_hospital_outlined,
      Icons.person_2_outlined,
      Icons.date_range_outlined,
      Icons.lock_clock_outlined,
      Icons.type_specimen_outlined,
      Icons.track_changes
    ];
    
  return Column(
    children: [Expanded(
      child: ListView.builder(
        itemCount: userOrders.length,
      itemBuilder: (context, index){
        return Card(
          color: Colors.blue,
          child: ListTile(
            onTap:() {
              
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(userOrders[index]['user_name']),
                    ),
                    body: buildAppointment( userOrders[index]['appointment'], fieldIcons),
                  );
                },
              ));
            
              //print(userOrders[index]['appointment']);

             // buildAppointment( userOrders[index]['appointment'], fieldIcons);
              
            },
            leading: Icon(Icons.person),
            title: Text(userOrders[index]['user_name']),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
              
                IconButton(onPressed: () {}, icon: Icon(Icons.check)),
                IconButton(onPressed: () {
                  //setState(){
                    userOrders.removeAt(index);
                  

                  
                  
                }, icon: Icon(Icons.close))
                
              ],
            ),
          )
        );
      },
      ),)],);
}






Widget buildAppointment(var appointmentFields, List fieldIcons) {
  List appointmentList = [];
  appointmentList.add(appointmentFields['hospitalId']);
  appointmentList.add(appointmentFields['doctorId']);
  appointmentList.add(appointmentFields['visitDate']);
  appointmentList.add(appointmentFields['visitTime']);
  appointmentList.add(appointmentFields['reasonOfVisit']);
  appointmentList.add(appointmentFields['bookingDate']);
  return Column(children: [
    Expanded(
        child: ListView.builder(
            itemCount: appointmentList.length,
            itemBuilder: (context, index) {
              return Card(
                  color: Colors.blue,
                  //elevation: 4,
                  //margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    onTap: () {
                      // setState(() {
                      //   _isEnabled = !_isEnabled;
                      // });
                    },
                    leading: Icon(fieldIcons[index]),
                    title: Text(appointmentList[index]),
                    
                  
                  ));
            }))
  ]);
}