// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/components/approved.dart';
// import 'package:flutter_application_1/components/dashboardRecords.dart';
// import 'package:flutter_application_1/components/navbar.dart';
// import 'package:flutter_application_1/components/requested.dart';

// class TempApp extends StatefulWidget{
//     @override
//     State<TempApp> createState() => _TempAppState();
//   }


// class _TempAppState extends State<TempApp>{
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//         drawer: NavBar(),
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text('Patient Dashboard'),
//           actions: 
//           <Widget>[
//                 IconButton(onPressed: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context) => Requested()));
                  
//                 }, icon: Icon(Icons.person_add),
//                 iconSize: 35.0),
                
//                // SizedBox(width: 16.0),

//                 IconButton(onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => Approved()));
//                 }, icon: Icon(Icons.fact_check_sharp),
//                 iconSize: 35.0),

//                // SizedBox(width: 16.0),

//                 IconButton(onPressed: (){

//                 }, icon: Icon(Icons.notifications),
//                 iconSize: 35.0)

//               ],
//             ),
//             // body: Container(
//             //   child: Column(
//             //     children: [
//             //       Column(
//             //         children: [SearchBar()],
//             //       ),
//             //       Row(
//             //         children: [Catalogs()],
//             //       ),
//             //       Row(children: [DashboardRecords()],)
//             //     ],
//             //   ),
//             // )
//             body: Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(child: Catalogs(),),
//               ),
//             ),
            
            
//     );
//   }
// }

// class Catalogs extends StatelessWidget {
//   List imgData = [
//     "assets/allergy.jpg",
//     "assets/insurance.jpg",
//     "assets/medications.jpg",
//     "assets/procedures.jpg",
//   ];
 
//   List titles = [
//     "Allergy",
//     "Insurance",
//     "Medications",
//     "Procedures",
//   ];
  
  
//   // @override
//   // State<Catalogs> createState() => _CatalogsState();


// //class _CatalogsState extends State<Catalogs>{
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 1.1,
//         mainAxisSpacing: 25),
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: 4,
//       itemBuilder: (BuildContext context, int index) {
//         return InkWell(
//           onTap: () {},
//           child: Container(
//             margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey, // Adjust the shadow color
//                   spreadRadius: 1,
//                   //blurRadius: 6,
//                 ),
//               ],
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(imgData[index], width: 150),
//                 Text(
//                   titles[index],
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }


// class SearchBar extends StatefulWidget {
//   const SearchBar({Key? key}) : super(key: key);

//   @override
//   State<SearchBar> createState() => _SearchBarState();
// }

// class _SearchBarState extends State<SearchBar>{

//   void updateList(String value){
//     //filters list
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Padding(
//       padding: EdgeInsets.all(8),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: Colors.grey[400],
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8.0),
//                 borderSide: BorderSide.none,
//               ),
//               hintText: "Search Patient",
//               prefixIcon: Icon(Icons.search),
//               prefixIconColor: Colors.blueGrey,
//             ),
//             onChanged: updateList,
//           ),
//           //SizedBox(height: 20.0),
//               Expanded(child: ListView(),
//               ),
//             ],
//           ),
//         );
//   }

// }

