import 'package:catalog/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class Details extends StatelessWidget {
  final Item catalogItem;

  const Details({super.key, required this.catalogItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.theme.colorScheme.secondaryContainer,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalogItem.price}"
              .text
              .color(context.theme.colorScheme.secondary)
              .xl2
              .make(),
          ElevatedButton(
                  onPressed: () {},
                  child: "Buy".text.make(),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          context.theme.colorScheme.primaryContainer),
                      shape: MaterialStateProperty.all(const StadiumBorder())))
              .wh(100, 50),
        ],
      ).p32(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    key: Key(catalogItem.id),
                    tag: Key(catalogItem.id),
                    child: Image.network(catalogItem.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 10,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                color: context.canvasColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalogItem.name.text.xl3
                        .color(context.theme.colorScheme.secondary)
                        .bold
                        .make(),
                    catalogItem.desc.text.xl
                        .color(context.theme.colorScheme.tertiary)
                        .textStyle(context.captionStyle)
                        .make(),
                    10.heightBox,
                    "Lorem Ipsum dolor sea"
                        .text
                        .color(context.theme.colorScheme.secondary)
                        .textStyle(context.captionStyle)
                        .make()
                        .p16(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
