import 'dart:convert';

class Package {
  String title;
  String description;
  List items;
  String price;

  Package({
    required this.title,
    required this.description,
    required this.items,
    required this.price
  });

  // factory Package.fromJson(Map<String, dynamic> parsedJson){

  //   return Package(
  //     title: parsedJson['title'],
  //     price: parsedJson['price'],
  //     items: parsedJson['items'],
  //     description : parsedJson['description'],
  //   );
  // }


  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'items': items,
      'price': price,
    };
  }

  factory Package.fromMap(Map<String, dynamic> map) {
    return Package(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      items: List.from(map['items']),
      price: map['price'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Package.fromJson(String source) => Package.fromMap(json.decode(source));
}
