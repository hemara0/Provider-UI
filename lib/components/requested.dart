import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/approved.dart';
import 'package:flutter_application_1/components/buildLists.dart';
import 'package:flutter_application_1/components/navbar.dart';
import 'package:flutter_application_1/components/requested.dart';
//import 'package:flutter_application_1/main.dart';


class AppointmentRequested extends StatefulWidget {
  
  @override
  State<AppointmentRequested> createState() => _AppointmentRequestedState();
}

class _AppointmentRequestedState extends State<AppointmentRequested> {
  List RequestedUsers = [];
  List userElement = 
    [{
    
    
    "user_orders": {
        "appointment": [
            {
                "hospitalId": "hospital 1",
                "doctorId": "doctor 1",
                "bookingDate": "2024-01-24 17:20:06.734",
                "visitDate": "12-08-2023",
                "visitTime": "12:30 PM",
                "reasonOfVisit": "abc",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cf8"
            },
            {
                "hospitalId": "hospital 2",
                "doctorId": "doctor 2",
                "bookingDate": "2024-01-24 17:20:06.734",
                "visitDate": "14-08-2023",
                "visitTime": "11:00 AM",
                "reasonOfVisit": "abc",
                "status": "Approved",
                "_id": "659b93e36b6149230b5a0cf9"
            },
            {
                "hospitalId": "hosp3",
                "doctorId": "doc3",
                "bookingDate": "2023-06-06 12:09:11.459",
                "visitDate": "30-07-2023",
                "visitTime": "15:30",
                "reasonOfVisit": "some reason",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cfa"
            },
            {
                "hospitalId": "hosp4",
                "doctorId": "doc4",
                "bookingDate": "2023-06-06 12:26:48.488",
                "visitDate": "1/7/2023",
                "visitTime": "16:00",
                "reasonOfVisit": "abc",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cfb"
            },
            {
                "hospitalId": "hosp5",
                "doctorId": "doc5",
                "bookingDate": "2023-06-06 13:19:35.578",
                "visitDate": "2023-06-15 00:00:00.000",
                "visitTime": "TimeOfDay(15:30)",
                "reasonOfVisit": "abc",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cfc"
            },
            {
                "hospitalId": "hosp6",
                "doctorId": "doc6",
                "bookingDate": "2023-06-06 13:27:34.063",
                "visitDate": "30/6/2023",
                "visitTime": "6:00 PM",
                "reasonOfVisit": "abc",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cfd"
            },
            {
                "hospitalId": "hospital_sample",
                "doctorId": "doc_sample",
                "bookingDate": "2023-06-22 12:06:50.354",
                "visitDate": "26-6-2023",
                "visitTime": "6:00 PM",
                "reasonOfVisit": "abc",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cfe"
            },
            {
                "hospitalId": "",
                "doctorId": "",
                "bookingDate": "2023-06-25 20:13:07.110",
                "visitDate": "",
                "visitTime": "",
                "reasonOfVisit": "",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cff"
            },
            {
                "hospitalId": "",
                "doctorId": "",
                "bookingDate": "2023-07-05 12:06:31.533",
                "visitDate": "",
                "visitTime": "",
                "reasonOfVisit": "",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0d00"
            }
        ],
        "medicalStore": [
            {
                "drugs": [
                    {
                        "drugID": "testname2",
                        "drugCount": "1",
                        "_id": "659b93e36b6149230b5a0d02"
                    },
                    {
                        "drugID": "testname3",
                        "drugCount": "2",
                        "_id": "659b93e36b6149230b5a0d03"
                    }
                ],
                "subtotal": "130.00",
                "tax": "20",
                "delivery": "50",
                "total": "200",
                "OrderDate": "2023-08-19 10:57:59.804",
                "_id": "64e0530e7d7e81f84b00dc98"
            },
            {
                "drugs": [
                    {
                        "drugID": "testname2",
                        "drugCount": "1",
                        "_id": "659b93e36b6149230b5a0d05"
                    },
                    {
                        "drugID": "testname3",
                        "drugCount": "3",
                        "_id": "659b93e36b6149230b5a0d06"
                    }
                ],
                "subtotal": "160.00",
                "tax": "20",
                "delivery": "50",
                "total": "230",
                "OrderDate": "2023-08-19 10:58:46.079",
                "_id": "64e0530e7d7e81f84b00dc9b"
            }
        ]
    },
    "_id": "645f679ebef9653d9304e3c7",
    "user_name": "patient1",
    "user_email": "abcdefgh@gmail.com",
    "user_govtids": [
        {
            "idType": "aadhar",
            "idNumber": "aadhar123",
            "_id": "659b93e36b6149230b5a0cf6"
        },
        {
            "idType": "dl",
            "idNumber": "dl123",
            "_id": "659b93e36b6149230b5a0cf7"
        }
    ],
    "user_hospitals": [
        {
            "hospitalName": "H1",
            "visits": [
                {
                    "visitDescription": "descreiption_h1v1",
                    "visitDate": null,
                    "_id": "659b93e36b6149230b5a0ce9"
                },
                {
                    "visitDescription": "descreiption_h1v2",
                    "visitDate": null,
                    "_id": "659b93e36b6149230b5a0cea"
                },
                {
                    "visitDescription": "descreiption_h1v3",
                    "visitDate": null,
                    "_id": "659b93e36b6149230b5a0ceb"
                }
            ],
            "_id": "659b93e36b6149230b5a0ce8"
        },
        {
            "hospitalName": "H2",
            "visits": [
                {
                    "visitDescription": "descreiption_h2v1",
                    "visitDate": null,
                    "_id": "659b93e36b6149230b5a0ced"
                }
            ],
            "_id": "659b93e36b6149230b5a0cec"
        },
        {
            "hospitalName": "H3",
            "visits": [
                {
                    "visitDescription": "descreiption_h3v1",
                    "visitDate": null,
                    "_id": "659b93e36b6149230b5a0cef"
                }
            ],
            "_id": "659b93e36b6149230b5a0cee"
        },
        {
            "hospitalName": "Appolo",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf0"
        },
        {
            "hospitalName": "Columbia Asia",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf1"
        },
        {
            "hospitalName": "Pear",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf2"
        },
        {
            "hospitalName": "Columbia Asia",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf3"
        },
        {
            "hospitalName": "Columbia Asia",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf4"
        },
        {
            "hospitalName": "Columbia Asia",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf5"
        }
    ],
    "user_lastlogin": "2024-01-08T06:12:47.986Z",
    "__v": 40,
    "user_address_street": "76, 3rd cross",
    "user_bloodgroup": "A",
    "user_city": "ban",
    "user_country": "In",
    "user_dob": "1999-09-09",
    "user_mobile": "9876543301",
    "user_pincode": "123456",
    "user_state": "ka"
},
{
    "user_orders": {
        "appointment": [
            {
                "hospitalId": "hospital 1",
                "doctorId": "doctor 1",
                "bookingDate": "2024-01-24 17:20:06.734",
                "visitDate": "12-08-2023",
                "visitTime": "12:30 PM",
                "reasonOfVisit": "abc",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cf8"
            },
            {
                "hospitalId": "hospital 2",
                "doctorId": "doctor 2",
                "bookingDate": "2024-01-24 17:20:06.734",
                "visitDate": "14-08-2023",
                "visitTime": "11:00 AM",
                "reasonOfVisit": "abc",
                "status": "Approved",
                "_id": "659b93e36b6149230b5a0cf9"
            },
            {
                "hospitalId": "hosp3",
                "doctorId": "doc3",
                "bookingDate": "2023-06-06 12:09:11.459",
                "visitDate": "30-07-2023",
                "visitTime": "15:30",
                "reasonOfVisit": "some reason",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cfa"
            },
            {
                "hospitalId": "hosp4",
                "doctorId": "doc4",
                "bookingDate": "2023-06-06 12:26:48.488",
                "visitDate": "1/7/2023",
                "visitTime": "16:00",
                "reasonOfVisit": "abc",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cfb"
            },
            {
                "hospitalId": "hosp5",
                "doctorId": "doc5",
                "bookingDate": "2023-06-06 13:19:35.578",
                "visitDate": "2023-06-15 00:00:00.000",
                "visitTime": "TimeOfDay(15:30)",
                "reasonOfVisit": "abc",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cfc"
            },
            {
                "hospitalId": "hosp6",
                "doctorId": "doc6",
                "bookingDate": "2023-06-06 13:27:34.063",
                "visitDate": "30/6/2023",
                "visitTime": "6:00 PM",
                "reasonOfVisit": "abc",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cfd"
            },
            {
                "hospitalId": "hospital_sample",
                "doctorId": "doc_sample",
                "bookingDate": "2023-06-22 12:06:50.354",
                "visitDate": "26-6-2023",
                "visitTime": "6:00 PM",
                "reasonOfVisit": "abc",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cfe"
            },
            {
                "hospitalId": "",
                "doctorId": "",
                "bookingDate": "2023-06-25 20:13:07.110",
                "visitDate": "",
                "visitTime": "",
                "reasonOfVisit": "",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0cff"
            },
            {
                "hospitalId": "",
                "doctorId": "",
                "bookingDate": "2023-07-05 12:06:31.533",
                "visitDate": "",
                "visitTime": "",
                "reasonOfVisit": "",
                "status": "Requested",
                "_id": "659b93e36b6149230b5a0d00"
            }
        ],
        "medicalStore": [
            {
                "drugs": [
                    {
                        "drugID": "testname2",
                        "drugCount": "1",
                        "_id": "659b93e36b6149230b5a0d02"
                    },
                    {
                        "drugID": "testname3",
                        "drugCount": "2",
                        "_id": "659b93e36b6149230b5a0d03"
                    }
                ],
                "subtotal": "130.00",
                "tax": "20",
                "delivery": "50",
                "total": "200",
                "OrderDate": "2023-08-19 10:57:59.804",
                "_id": "64e0530e7d7e81f84b00dc98"
            },
            {
                "drugs": [
                    {
                        "drugID": "testname2",
                        "drugCount": "1",
                        "_id": "659b93e36b6149230b5a0d05"
                    },
                    {
                        "drugID": "testname3",
                        "drugCount": "3",
                        "_id": "659b93e36b6149230b5a0d06"
                    }
                ],
                "subtotal": "160.00",
                "tax": "20",
                "delivery": "50",
                "total": "230",
                "OrderDate": "2023-08-19 10:58:46.079",
                "_id": "64e0530e7d7e81f84b00dc9b"
            }
        ]
    },
    "_id": "645f679ebef9653d9304e3c7",
    "user_name": "patient2",
    "user_email": "abcdefgh@gmail.com",
    "user_govtids": [
        {
            "idType": "aadhar",
            "idNumber": "aadhar123",
            "_id": "659b93e36b6149230b5a0cf6"
        },
        {
            "idType": "dl",
            "idNumber": "dl123",
            "_id": "659b93e36b6149230b5a0cf7"
        }
    ],
    "user_hospitals": [
        {
            "hospitalName": "H1",
            "visits": [
                {
                    "visitDescription": "descreiption_h1v1",
                    "visitDate": null,
                    "_id": "659b93e36b6149230b5a0ce9"
                },
                {
                    "visitDescription": "descreiption_h1v2",
                    "visitDate": null,
                    "_id": "659b93e36b6149230b5a0cea"
                },
                {
                    "visitDescription": "descreiption_h1v3",
                    "visitDate": null,
                    "_id": "659b93e36b6149230b5a0ceb"
                }
            ],
            "_id": "659b93e36b6149230b5a0ce8"
        },
        {
            "hospitalName": "H2",
            "visits": [
                {
                    "visitDescription": "descreiption_h2v1",
                    "visitDate": null,
                    "_id": "659b93e36b6149230b5a0ced"
                }
            ],
            "_id": "659b93e36b6149230b5a0cec"
        },
        {
            "hospitalName": "H3",
            "visits": [
                {
                    "visitDescription": "descreiption_h3v1",
                    "visitDate": null,
                    "_id": "659b93e36b6149230b5a0cef"
                }
            ],
            "_id": "659b93e36b6149230b5a0cee"
        },
        {
            "hospitalName": "Appolo",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf0"
        },
        {
            "hospitalName": "Columbia Asia",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf1"
        },
        {
            "hospitalName": "Pear",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf2"
        },
        {
            "hospitalName": "Columbia Asia",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf3"
        },
        {
            "hospitalName": "Columbia Asia",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf4"
        },
        {
            "hospitalName": "Columbia Asia",
            "visits": [],
            "_id": "659b93e36b6149230b5a0cf5"
        }
    ],
    "user_lastlogin": "2024-01-08T06:12:47.986Z",
    "__v": 40,
    "user_address_street": "76, 3rd cross",
    "user_bloodgroup": "A",
    "user_city": "ban",
    "user_country": "In",
    "user_dob": "1999-09-09",
    "user_mobile": "9876543301",
    "user_pincode": "123456",
    "user_state": "ka"
}
];

  
  @override
  Widget build(BuildContext context) {
  //   for(var ele in userElement){
  //     for(var order in ele["user_orders"]["appointment"]){
  //       if(order["bookingDate"] == "2024-01-24 17:20:06.734" && order["status"] == "Approved"){
  //         var user = {"user_name": ele['user_name'], "user_id" : ele['_id'], "appointment" : order};
  //         RequestedUsers.add(user);
  //       }
  //     }
  // }
  // print(RequestedUsers);
     return MaterialApp(
      home: Scaffold(

        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Requested'),
          actions: 
          <Widget>[
                IconButton(onPressed: (){
                 //Navigator.push(context, MaterialPageRoute(builder: (context) => Requested()));
                  
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
        // FutureBuilder<List> {
        //   future : getRequestedUsers(),
        //   builder: (context, snap) {
        //   if ((snap.data == null)) {
        //     return const Center(child: CircularProgressIndicator());
        //   } else {
            Column(
              children: [Expanded(
                child: Container(
                  child: buildAppointmentLists(getRequestedUsers()),
                ),
                )]
            )
          
        
        
        
      
    ),
    );
}

List getRequestedUsers(){
  for(var ele in userElement){
      for(var order in ele["user_orders"]["appointment"]){
        if(order["bookingDate"] == "2024-01-24 17:20:06.734" && order["status"] == "Requested"){
          var user = {"user_name": ele['user_name'], "user_id" : ele['_id'], "appointment" : order};
          RequestedUsers.add(user);
        }
      }
  }
  return RequestedUsers;
}


}