import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
            width: double.infinity,
            height: 100,
            color: Colors.orange,
          ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
