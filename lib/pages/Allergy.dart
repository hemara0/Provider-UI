import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/providers.dart';

class AllergyEx extends StatefulWidget {
  //const AllergyExample({super.key});

  @override
  State<AllergyEx> createState() => _AllergyExState();
}

class _AllergyExState extends State<AllergyEx> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Allergy"),
      ),
      body: FutureBuilder<List>(
        future: fetchAllergyRecord('4432'),
        builder: (context, snap) {
          if ((snap.data == null)) {
            print('***********0');
            print(snap.data!);
            return const Center(child: CircularProgressIndicator());
          } else {
            print(snap.data!);
            return 
              ListView.builder(
                  itemCount: snap.data![0],
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      
              title: Text(snap.data![1][index]['resource']['code']['text']) ,
               tileColor: Colors.blue,
            );
                  });
                  }
        }
    ));
  }
}
