import 'package:catalog/screens/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/catalog.dart';
import 'CatalogItem.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Details(catalogItem: catalog)));
            },
            child: CatalogItem(catalog: catalog));
      },
      itemCount: CatalogModel.items.length,
    );
  }
}
