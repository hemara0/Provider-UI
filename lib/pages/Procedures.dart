import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/providers.dart';

class ProcedureEx extends StatefulWidget {
  //const ProcedureExample({super.key});

  @override
  State<ProcedureEx> createState() => _ProcedureExState();
}

class _ProcedureExState extends State<ProcedureEx> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Procedures"),
      ),
      body: FutureBuilder<List>(
        future: fetchProcedureRecord('991'),
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
