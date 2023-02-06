import 'package:flutter/material.dart';

class ser extends StatefulWidget {
  const ser({Key? key}) : super(key: key);

  @override
  State<ser> createState() => _serState();
}

class _serState extends State<ser> {
  List variable = [
    Text("ff")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("d"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              itemCount: variable.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    ListTile( title: Text('d'), ),
                    Divider( height: 200, ),
                  ],
                );
              },
            ),
            SizedBox(height: 50.0)
          ]
      )
    );
  }
}
