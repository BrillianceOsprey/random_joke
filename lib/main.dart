import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'things/get_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Hello Mother Fucker",
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Are You fucking kidding me"),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      child: Container(
                        child: Text(
                          snapshot.hasData.setup,
                          textAlign: TextAlign.center,
                        ),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(50),
                      ),
                      elevation: 5,
                      shadowColor: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.red,
                    ),
                    Card(
                      child: Container(
                        child: Text(
                          snapshot.hasData.punchline,
                          textAlign: TextAlign.center,
                        ),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(50),
                      ),
                      elevation: 5,
                      shadowColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.green,
                    ),
                  ],
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
