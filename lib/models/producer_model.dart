import 'dart:convert';

class Producer {
  String name;
  String logo;
  String description;
  String distance;
  List packages;

  Producer({
    required this.name,
    required this.description,
    required this.logo,
    required this.distance,
    required this.packages
  });

  factory Producer.fromJson2(Map<String, dynamic> parsedJson){

    return Producer(
      name: parsedJson['name'],
      logo : parsedJson['logo'],
      description : parsedJson['description'],
      distance : parsedJson['distance'],
      packages : parsedJson['packages'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'logo': logo,
      'description': description,
      'distance': distance,
      'packages': packages,
    };
  }

  factory Producer.fromMap(Map<String, dynamic> map) {
    return Producer(
      name: map['name'] ?? '',
      logo: map['logo'] ?? '',
      description: map['description'] ?? '',
      distance: map['distance'] ?? '',
      packages: List.from(map['packages']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Producer.fromJson(String source) => Producer.fromMap(json.decode(source));
}
