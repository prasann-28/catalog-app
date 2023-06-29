import 'package:catalog/models/catalog.dart';

class CartModel {
  late CatalogModel _catalog;
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void addItem(Item item) {
    _itemIds.add(int.parse(item.id));
  }

  void removeItem(Item item) {
    _itemIds.remove(int.parse(item.id));
  }
}
