import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);
  final num days = 30;
  final String institute = 'Codepur';
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ), 
      body: Center(
        child: Text('Welcome to $days days of flutter by' +institute ),
      ),
      drawer: Drawer(),
    );
  }
}
