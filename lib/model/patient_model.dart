import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

 class Retrieve extends StatelessWidget {
  const Retrieve({Key? key}) : super(key: key);

  @override
 Widget build(BuildContext context) {
   return const MaterialApp(
  // Hide the debug banner
  debugShowCheckedModeBanner: false,
  title: 'Patient Details',
  home: RetrieveApp(),
);
}
}

_setHeaders() => {
      "Content-Type": "application/json",
      "Accept": "*/*",
      "Access-Control-Allow-Origin": "*"
    };

class RetrieveApp extends StatefulWidget {
  const RetrieveApp({Key? key}) : super(key: key);

  @override
_RetrieveAppState createState() => _RetrieveAppState();
}

class _RetrieveAppState extends State<RetrieveApp> {
  List _items = [];

// Fetch content from the json file
Future<void> readJson() async {
final String response = await rootBundle.loadString('assets/patientData.json');
final data = await json.decode(response);
// List<Product> products =
//         List<Product>.from(jsonData.map((product) => Product.fromJson(product)))
//             .toList();
setState(() {
  _items = data["appointment"];
});
}



  @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
    centerTitle: true,
    title: const Text(
      'Patient details',
    ),
  ),
  body: Padding(
    padding: const EdgeInsets.all(25),
    child: Column(
      children: [
        ElevatedButton(
          child: const Text('Load Data'),
          onPressed: readJson,
        ),

        // Display the data loaded from sample.json
        _items.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(20),
                      child: ListTile(
                        //leading: Text(_items[index]["user_orders"]),
                        title: Text(_items[index]["bookingDate"]),
                       // subtitle: Text(_items[index]["status"]),
                      ),
                    );
                  },
                ),
              )
            : Container()
      ],
    ),
  ),
 );
 }
 }