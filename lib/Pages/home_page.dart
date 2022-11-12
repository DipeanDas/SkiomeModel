import 'package:flutter/material.dart';
import 'package:flutter_application_prac1/widgets/drawer.dart';

import '../models/features.dart';
import '../widgets/feature_widget.dart';

class HomePage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(2, (index) => Featuremodel.Topfeatures[0]);
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Skiome Features", style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: Featuremodel.Topfeatures.length,
            itemBuilder: ((context, index) {
              return FeatureWidget(
                Topfeatures: Featuremodel.Topfeatures[index],
              );
            })),
      ),
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
    );
  }
}
