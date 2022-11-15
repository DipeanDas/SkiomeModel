import 'package:flutter/material.dart';
import 'package:flutter_application_prac1/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: deprecated_member_use
        "Skiome Features".text.xl4.bold.color(context.theme.accentColor).make(),
        "Popular Services".text.color(MyTheme.lightgreyColor).xl2.make(),
      ],
    );
  }
}
