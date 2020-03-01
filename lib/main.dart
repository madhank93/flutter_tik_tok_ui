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

  Widget get topSection {
    return Container(
      height: 100,
      color: Colors.yellow,
    );
  }

  Widget get videoDescription {
    return Expanded(child: Container(
      color: Colors.green,
    ));
  }

  Widget get actionToolbar {
    return  Container(
      width: 100,
      color: Colors.redAccent,
    );
  }

  Widget get middleSection {
    return Expanded (
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          videoDescription,
          actionToolbar
        ],
      ),
    );
  }

  Widget get bottomSection {
    return Container(
      height: 80,
      color: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Top section
          topSection,
          // Middle section
          middleSection,
          // Bottom section
          bottomSection,
        ],
      ),
    );
  }
}
