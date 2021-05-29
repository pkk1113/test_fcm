import 'package:flutter/material.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FCM 테스트 앱'), centerTitle: true),
      body: Container(),
      bottomNavigationBar: BottomAppBar(child: Container()),
    );
  }
}
