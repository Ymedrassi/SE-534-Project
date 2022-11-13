import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor:Colors.red,

      ),
      body: Center(
        child: Text(
          'Catagores',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.black,
            fontFamily: 'Dancing',

          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (null),
        child: Text('Click'),
        backgroundColor: Colors.red,
      ),
    );
  }
}