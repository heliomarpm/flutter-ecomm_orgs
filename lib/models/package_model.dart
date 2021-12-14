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

  factory Package.fromJson(Map<String, dynamic> parsedJson){

    return Package(
      title: parsedJson['title'],
      price: parsedJson['price'],
      items: parsedJson['items'],
      description : parsedJson['description'],
    );
  }
}
