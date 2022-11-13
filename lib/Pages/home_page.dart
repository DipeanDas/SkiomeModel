// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_prac1/widgets/drawer.dart';

import '../models/features.dart';
import '../widgets/feature_widget.dart';
// import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final featurejson =
        await rootBundle.loadString("assets/files/Features.json");
    final decodedData = jsonDecode(featurejson);
    var featureData = decodedData["Sfeatures"];
    Featuremodel.Topfeatures = List.from(featureData)
        // ignore: avoid_types_as_parameter_names
        .map<features>((Topfeatures) => features.fromMap(Topfeatures))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skiome Features", style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (Featuremodel.Topfeatures != null &&
                Featuremodel.Topfeatures.isNotEmpty)
            ? ListView.builder(
                itemCount: Featuremodel.Topfeatures.length,
                itemBuilder: ((context, index) {
                  return FeatureWidget(
                    Topfeatures: Featuremodel.Topfeatures[index],
                  );
                }))
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
