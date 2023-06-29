class CatalogModel {
  static List<Item> items = [];

  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  Item getItemByPos(int pos) => items[pos];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final String color;
  final num price;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.price,
      required this.image});

  factory Item.fromMap(Map<dynamic, dynamic> map) {
    return Item(
      id: map["id"].toString(),
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      image: map["image"],
      color: map["color"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "color": color,
        "desc": desc,
        "image": image
      };
}
