import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App"
            .text
            .xl4
            .bold
            .color(context.theme.colorScheme.secondary)
            .make(),
        "Trending Products"
            .text
            .color(context.theme.colorScheme.tertiary)
            .xl
            .make()
      ],
    );
  }
}
