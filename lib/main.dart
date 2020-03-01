import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok UI',
      debugShowCheckedModeBanner: false,
      home: TikTok(),
    );
  }
}

class TikTok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Top section
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          // Middle section
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: Container(
                  color: Colors.green,
                )),
                Container(
                  width: 100,
                  color: Colors.redAccent,
                )
              ],
            ),
          ),
          // Bottom section
          Container(
            height: 80,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
