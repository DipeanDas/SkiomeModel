import 'package:flutter/material.dart';
import 'package:flutter_application_prac1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Skiome"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          // ignore: prefer_const_constructors
          child: Text("Welcome to 30 days of flutter"),
        ),
      ),
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
    );
  }
}
