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

  factory Producer.fromJson(Map<String, dynamic> parsedJson){

    return Producer(
      name: parsedJson['name'],
      logo : parsedJson['logo'],
      description : parsedJson['description'],
      distance : parsedJson['distance'],
      packages : parsedJson['packages'],
    );
  }
}