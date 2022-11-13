import 'package:flutter/material.dart';
import 'package:flutter_application_prac1/models/features.dart';

class FeatureWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final features Topfeatures;

  // ignore: non_constant_identifier_names
  FeatureWidget({Key? key, required this.Topfeatures})
      // ignore: unnecessary_null_comparison
      : assert(Topfeatures != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Card(
        color: Color.fromARGB(255, 219, 168, 224),
        shape:StadiumBorder(),
        child: ListTile(
          onTap: (() {
            print("${Topfeatures.name} pressed");
          }),
          leading: SizedBox(
              width: 100,
              height: 50,
              child: Image.asset(
                Topfeatures.image,
                alignment: Alignment.bottomCenter,
              )),
          title: Text(Topfeatures.name),
          subtitle: Text(Topfeatures.desc),
          trailing: Text(
            "\$${Topfeatures.price}",
            textScaleFactor: 1.5,
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
