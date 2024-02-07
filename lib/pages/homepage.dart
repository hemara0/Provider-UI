import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/RetriveData.dart';
import 'package:flutter_application_1/components/approved.dart';
import 'package:flutter_application_1/components/dashboardRecords.dart';
import 'package:flutter_application_1/components/navbar.dart';
import 'package:flutter_application_1/components/patientBasicDetails.dart';
import 'package:flutter_application_1/components/requested.dart';
import 'package:flutter_application_1/model/patient_model.dart';
import 'package:flutter_application_1/pages/Allergy.dart';
import 'package:flutter_application_1/pages/Procedures.dart';
import 'package:flutter_application_1/pages/dashboardApproved.dart';
import 'package:flutter_application_1/pages/dashboardRequested.dart';
import 'package:flutter_application_1/provider/providers.dart';



class ProviderApp extends StatefulWidget{
    @override
    State<ProviderApp> createState() => _ProviderAppState();
  }


class _ProviderAppState extends State<ProviderApp>{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Patient Dashboard'),
          // leading: IconButton(
          //   onPressed: (){
          //     //menu
          //      //NavBar();
          //   },
          //   icon: Icon(Icons.menu),
          // ),
          actions: 
          <Widget>[
            IconButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => RetrieveApp()));
                  
                }, icon: Icon(Icons.new_releases_sharp),
                iconSize: 35.0),
                IconButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardRequested()));
                  
                }, icon: Icon(Icons.person_add),
                iconSize: 35.0),
                
               // SizedBox(width: 16.0),

                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardApproved()));
                }, icon: Icon(Icons.fact_check_sharp),
                iconSize: 35.0),

               // SizedBox(width: 16.0),

                IconButton(onPressed: (){

                }, icon: Icon(Icons.notifications),
                iconSize: 35.0)

              ],
            ),

            
          
        
       body : 
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           Expanded(child: SearchBar()) ,
           Expanded(child: Row(
            children: [
              Expanded(
                    child: PatientBasicStatic()
                    ),
                    Expanded(child: RetriveData())
            ]
              
           ),),
            
            Expanded(
              child: Row(
                children: [
                  
                    Expanded(
                      child: Catalogs(),
                    ),
                    Expanded(
                      child: DashboardRecords(),
                    ),
                     ],
                
              ) 
            ),
           //SizedBox(height: 20.0),
           //Catalogs(),
           ],
           ) 
           );

           
      //   //    ],
      //   //  ),
      //  ),

      
  //    Column(
  //     children: [Container(
  //       height: 150,
  //       child: SearchBar(),
  //     ),
  //     Column(
  //       children: [Container(
  //         child: 
  //           PatientBasicStatic()
          
  //       ),
        
  //       ],
  //     ),
  //     Column(
       
  //         children: [Container(
  //           child: Catalogs(),
  //         )],
        
  //     )
      
  //     ],
  //    )
       
       
  //   );
  // }
}
}

  
  
  
 
//   State<Catalogs> createState() => _CatalogsState();


// class _CatalogsState extends State<Catalogs>{s

  //comment starts from here
 
  Widget Catalogs() {
    List imgData = [
      
    "assets/allergy.jpg",
    "assets/procedures.jpg",
    "assets/medications.jpg",
    "assets/insurance.jpg",
  ];
 
  List titles = [
    "Allergy",
    "Procedures",    
    "Medications",
    "Insurance",
    
  ];
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.1,
        mainAxisSpacing: 20),
        shrinkWrap: true,
       // physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
         itemBuilder: (BuildContext context, int index) {  
          return InkWell(
            onTap: (){
              if(titles[index] == 'Allergy'){
                //fetchAllergyRecord('821');
                Navigator.push(context, MaterialPageRoute(builder: (context) => AllergyEx()));
              }
              else if(titles[index] == 'Procedures'){
                //fetchAllergyRecord('821');
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProcedureEx()));
              }
            },
            
           
              child: Container(
               margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                     color: Colors.white,
                      //spreadRadius: 1,
                      //blurRadius: 6,
                  ),
                  ] 
                ),
                //child: SingleChildScrollView( // Wrapping Image.asset with SingleChildScrollView
                //scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(imgData[index],
                    width: 80,),
                    Text(titles[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
                //),
              ),
            
          );
         },
  

  //     primary: false,
  // padding: const EdgeInsets.all(20),
  // crossAxisSpacing: 10,
  // mainAxisSpacing: 10,
    

  
  //   );
  // return Scaffold(
  //   body: SingleChildScrollView(
  //     child: Container(

  //     ),
  //   ),
   );
}

//ends here
// @override
// Widget build(BuildContext context) {
//   return GridView.builder(
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 3, 
//     mainAxisSpacing: 8.0, 
//     crossAxisSpacing: 8.0, 
//   ),
//   padding: EdgeInsets.all(8.0), 
//   itemCount: imgData.length, 
//   itemBuilder: (context, index) {
//     return Container(
//       color: Colors.blue, 
//       child: Center(
//         child: Text(
//           titles[index],
//           style: TextStyle(fontSize: 18.0, color: Colors.white),
//         ),
//       ),
//     );
//   },
//   );
// }






class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar>{

  void updateList(String value){
    //filters list
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text("Search Patient", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold), 
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[400],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search Patient",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.blueGrey,
                  
                ),
              ),
              //SizedBox(height: 15.0,),
              //Expanded(child: ListView(),
              //),
            ],
          ),
        ),

    );
  }

}

