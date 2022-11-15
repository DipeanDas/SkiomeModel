import 'package:flutter/material.dart';
import 'package:flutter_application_prac1/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Skiome Features".text.xl4.bold.color(MyTheme.blackColor).make(),
        "Popular Services".text.xl2.make(),
      ],
    );
  }
}
