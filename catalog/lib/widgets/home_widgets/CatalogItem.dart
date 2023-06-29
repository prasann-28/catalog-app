import 'package:catalog/models/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../themes.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: Row(
      children: [
        Hero(tag: Key(catalog.id), child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg
                .color(context.theme.colorScheme.secondary)
                .bold
                .make(),
            catalog.desc.text
                .color(context.theme.colorScheme.tertiary)
                .textStyle(context.captionStyle)
                .make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              // TODO: Arrange padding
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}"
                    .text
                    .color(context.theme.colorScheme.secondary)
                    .make(),
                AddToCartButton(catalog: catalog)
              ],
            ).pOnly(right: 10.0)
          ],
        ))
      ],
    ))
        .color(context.theme.colorScheme.secondaryContainer)
        .roundedLg
        .square(150)
        .make()
        .py16();
  }
}

class AddToCartButton extends StatefulWidget {
  final Item catalog;

  const AddToCartButton({super.key, required this.catalog});

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          isAdded = isAdded.toggle();
          final _catalog = CatalogModel();
          final _cart = CartModel();
          _cart.addItem(widget.catalog);
          setState(() {});
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                context.theme.colorScheme.primaryContainer),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child: isAdded
            ? Icon(Icons.done)
            : const Icon(CupertinoIcons.cart_badge_plus));
  }
}
